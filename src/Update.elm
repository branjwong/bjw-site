port module Update exposing (..)

import Window exposing (Size)
import Debug
import Time exposing (Time)
import Navigation
import Task
import Random


--

import Model exposing (..)
import Teaching.TrinomialGeneratorWorksheet exposing (..)
import Router


port toTop : Bool -> Cmd msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case Debug.log "update" msg of
        --case msg of
        NoOp ->
            model ! []

        Resize size ->
            { model | size = size } ! []

        ToTop arg ->
            model ! [ toTop True ]

        WorksheetMsg msg' ->
            case msg' of
                New ->
                    { model
                        | worksheet = generateWorksheetWithSeed model.worksheet.seed
                    }
                        ! []

                Show ->
                    let
                        worksheet =
                            model.worksheet
                    in
                        { model
                            | worksheet =
                                { worksheet
                                    | answer = Shown
                                }
                        }
                            ! []

                Tick time ->
                    { model
                        | worksheet = generateWorksheetWithSeed (Random.initialSeed (round time))
                    }
                        ! []


{-| The URL is turned into a result. If the URL is valid, we just update our
model to the new count. If it is not a valid URL, we modify the URL to make
sense.
-}
urlUpdate : Result String Page -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    --case Debug.log "urlUpdate" result of
    case result of
        Err _ ->
            ( model, Navigation.modifyUrl (Router.toHash model.page) )

        Ok page ->
            let
                resizePages =
                    [ Home, Teaching TeachingHome, Teaching TrinomialGeneratorWorksheet ]

                resizeTask =
                    if List.foldr (||) False (List.map (\x -> x == page) resizePages) then
                        [ Task.perform (\_ -> NoOp) Resize Window.size ]
                    else
                        []

                worksheetTask =
                    [ Task.perform (\_ -> NoOp) (WorksheetMsg << Tick) Time.now
                    , Task.perform (\_ -> NoOp) Resize Window.size
                    ]

                toTopTask =
                    [ Task.perform (\_ -> NoOp) ToTop (Task.succeed True) ]

                batch =
                    toTopTask ++ resizeTask ++ worksheetTask
            in
                { model | page = page } ! batch

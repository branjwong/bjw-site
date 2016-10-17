port module Update exposing (..)

import Window exposing (Size)
import Debug
import Time exposing (Time)
import Navigation
import Task
import Random


--

import Model exposing (..)
import Teaching.TrinomialGenerator as TrinomialGenerator exposing (..)
import Router


port toTop : Bool -> Cmd msg


port disqus : String -> Cmd msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case Debug.log "update" msg of
        --case msg of
        NoOp ->
            model ! []

        Resize size ->
            { model | size = size } ! []

        ToTop _ ->
            model ! [ toTop True ]

        Disqus str ->
            case str of
                Just str' ->
                    model ! [ disqus str' ]

                Nothing ->
                    model ! [ disqus "" ]

        WorksheetMsg msg' ->
            case msg' of
                New ->
                    { model
                        | problem = Just (generateProblemWithSeed (Maybe.withDefault TrinomialGenerator.init model.problem).seed)
                    }
                        ! []

                Show ->
                    case model.problem of
                        Just problem ->
                            { model
                                | problem =
                                    Just
                                        { problem
                                            | answer = Shown
                                        }
                            }
                                ! []

                        Nothing ->
                            model ! []

                Tick time ->
                    { model
                        | problem = Just (generateProblemWithSeed (Random.initialSeed (round time)))
                    }
                        ! []

                Clear ->
                    { model | problem = Nothing } ! []


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
                toTopTask =
                    [ Task.perform (\_ -> NoOp) ToTop (Task.succeed True) ]

                resizePages =
                    [ Home, Teaching TeachingHome ]

                resizeTask =
                    if List.foldr (||) False (List.map (\x -> x == page) resizePages) then
                        [ Task.perform (\_ -> NoOp) Resize Window.size ]
                    else
                        []

                disqusTask =
                    if isDisqusPage page then
                        let
                            msg =
                                page
                                    |> Router.toHash
                                    |> Just
                        in
                            [ Task.perform
                                (\_ -> NoOp)
                                Disqus
                                (Task.succeed msg)
                            ]
                    else
                        [ Task.perform (\_ -> NoOp) Disqus (Task.succeed Nothing) ]

                worksheetTask =
                    if page == Teaching TrinomialGenerator then
                        [ Task.perform
                            (\_ -> NoOp)
                            (\time -> WorksheetMsg (Tick time))
                            Time.now
                        ]
                    else
                        [ Task.perform
                            (\_ -> NoOp)
                            (\_ -> WorksheetMsg Clear)
                            (Task.succeed True)
                        ]
            in
                { model | page = page } ! (toTopTask ++ resizeTask ++ worksheetTask ++ disqusTask)


isDisqusPage : Page -> Bool
isDisqusPage page =
    let
        disqusPage =
            [ CrossGame
            , WhatIAmDoingWithMyLife
            , MovingBackToJapan
            ]

        matchPages =
            List.map Writing disqusPage
    in
        List.any (\p -> p == page) matchPages

module Update exposing (..)

import Window exposing (Size)
import Model exposing (..)
import Debug
import UrlParser exposing (Parser, (</>), format, int, oneOf, s, string)
import String
import Navigation
import Task


type Msg
    = Resize Size
    | ChangePage Page


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case Debug.log "Update: " msg of
        Resize size ->
            ( { model | size = size }, Cmd.none )

        ChangePage page ->
            ( { model | page = page }, Cmd.none )


toHash : Page -> String
toHash page =
    case page of
        Home ->
            "#home"

        Programming ->
            "#programming"

        Teaching ->
            "#teaching"

        Writing ->
            "#writing"


hashParser : Navigation.Location -> Result String Page
hashParser location =
    UrlParser.parse identity pageParser (String.dropLeft 1 location.hash)


pageParser : Parser (Page -> a) a
pageParser =
    oneOf
        [ format Home (s "home")
        , format Programming (s "programming")
        , format Teaching (s "teaching")
        , format Writing (s "writing")
        ]


{-| The URL is turned into a result. If the URL is valid, we just update our
model to the new count. If it is not a valid URL, we modify the URL to make
sense.
-}
urlUpdate : Result String Page -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    case Debug.log "result" result of
        Err _ ->
            ( model, Navigation.newUrl (toHash model.page) )

        Ok page ->
            case page of
                Home ->
                    { model
                        | page =
                            page
                    }
                        ! [ Task.perform Resize Resize Window.size ]

                Teaching ->
                    { model
                        | page =
                            page
                    }
                        ! [ Task.perform Resize Resize Window.size ]

                _ ->
                    { model
                        | page =
                            page
                    }
                        ! []

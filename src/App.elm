module App exposing (main)

import Navigation
import Window exposing (Size)


--

import Model exposing (..)
import Update exposing (..)
import View
import Router
import Teaching.TrinomialGeneratorWorksheet as Worksheet


main : Program Never
main =
    Navigation.program (Navigation.makeParser Router.hashParser)
        { init = init
        , urlUpdate = urlUpdate
        , update = Update.update
        , subscriptions = subscriptions
        , view = View.view
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Window.resizes Resize


init : Result String Page -> ( Model, Cmd Msg )
init result =
    urlUpdate result (Model Home (Size 0 0) Worksheet.init)

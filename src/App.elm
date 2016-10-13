module App exposing (main)

-- ELM PACKAGES

import Navigation
import Html.Events exposing (onClick)
import Task exposing (andThen)
import Window exposing (Size)
import Debug


-- PROJECT IMPORTS

import Model exposing (..)
import View
import Update exposing (..)


main : Program Never
main =
    Navigation.program (Navigation.makeParser hashParser)
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
    urlUpdate result (Model Home (Size 0 0))


devInit =
    ( Model Home (Size 0 0)
    , Cmd.batch
        [ Task.perform Resize Resize Window.size
          --, Task.perform ChangePage ChangePage (Task.succeed Teaching)
        ]
    )

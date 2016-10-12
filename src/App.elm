module App exposing (main)

-- ELM PACKAGES

import Html exposing (Html, button, div, text)
import Html.App as App
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
    App.program
        { init = init
        , update = Update.update
        , subscriptions = subscriptions
        , view = View.view
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Window.resizes Resize



--


init =
    ( Model Home (Size 0 0)
    , Task.perform Resize Resize Window.size
    )


devInit =
    ( Model Home (Size 0 0)
    , Cmd.batch
        [ Task.perform Resize Resize Window.size
          --, Task.perform ChangePage ChangePage (Task.succeed Teaching)
        ]
    )

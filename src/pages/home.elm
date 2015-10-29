-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/cover/

module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import TopBar

-- MODEL

type alias Model =
    { currentPage : String
    }

model : Model
model =
    { currentPage = "Home"
    }

-- VIEW

displayPage : Html
displayPage =
    div [ ]
        [ text "honey i'm home"
        ]

view : Model -> Html
view model =
    div []
        [ TopBar.topBar model.currentPage []
        --, displayPage
        ]

main : Html
main =
    view model
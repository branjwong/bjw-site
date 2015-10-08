-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/carousel/
-- http://getbootstrap.com/javascript/#affix

module Teaching where

import Html exposing (..)
import Html.Attributes exposing (..)

import TopBar

-- MODEL

type alias Model =
    { currentPage : String
    }


model : Model
model =
    { currentPage = "Teaching"
    }

-- VIEW

displayPage : Html
displayPage =
    div [ ]
        [ text "i shall mould your mind"
        ]

view : Model -> Html
view model =
    div []
        [ TopBar.topBar model.currentPage
        ]


main : Html
main =
    view model
module Programming where

import Html exposing (..)
import Html.Attributes exposing (..)

import TopBar

-- MODEL

type alias Model =
    { currentPage : String
    }


model : Model
model =
    { currentPage = "Programming"
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
        [ TopBar.topBar model.currentPage []
        ]


main : Html
main =
    view model
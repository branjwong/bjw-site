module Programming where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar

port title: String
port title =  "Programming · BJW"


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
        [ NavBar.navBar model.currentPage []
        ]


main : Html
main =
    view model
module Programming where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Style



port title: String
port title =  "Teaching · BJW"


main : Html
main =
  view model


type alias Model =
  { currentPage : String
  }


model : Model
model =
  { currentPage = "Programming"
  }


view : Model -> Html
view model =
  div
    [ attribute "role" "elm-app" ]
    [ NavBar.navBar model.currentPage links
    , programming
    ]

links =
  []

programming =
  div
    [ class "container"
    , Style.programmingContainer
    ]
    [ div
      [ class "row" ]
      [ programmingHeader
      ]
    ]


programmingHeader =
  div
    [ class "col-mid-12", Style.writingHeader ]
    [ h1 [ Style.writingTitle ] [ text "The Laboratory" ]
    , p [ class "lead", Style.writingDescription ] [ text "Where my programming experience is here for viewing." ]
    ]
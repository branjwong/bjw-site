-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/cover/

module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Style

port title : String
port title = "Home · BJW"

type alias Model =
  { currentPage : String
  }

model : Model
model =
  { currentPage = "Home"
  }


view : Model -> Html
view model =
  div 
    [ Style.body ]
    [ NavBar.navBar model.currentPage []
    , home
    ]

main : Html
main =
  view model


home =
  div
    [ class "container"
    , Style.homeContainer
    ]
    [ div
      [ class "row" ]
      [ header
      ]
    ]


header =
  div
    [ Style.writingHeader ]
    [ h1 [ Style.writingTitle ] [ text "Brandon's Niche on the Net." ]
    , p [ class "lead", Style.writingDescription ] [ text "Sup Internet. I am here too." ]
    --, h1 [ Style.writingTitle ] [ text "A Rotten Register" ]
    --, p [ class "lead", Style.writingDescription ] [ text "Everything that you thought you didn't want to hear." ]
    ]

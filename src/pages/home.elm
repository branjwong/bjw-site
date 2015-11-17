-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/cover/

module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar

import SharedStyles
import PrintStyle

port title : String
port title = "Home | BJW"

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
    []
    [ PrintStyle.stylesheet SharedStyles.exports
    , NavBar.navBar model.currentPage []
    , home
    ]


main : Html
main =
  view model


home =
  div
    [ class "container HomeContainer"
    ]
    [ div
      [ class "row" ]
      [ header
      ]
    ]


header =
  div
    [ class "WritingHeader" ]
    [ h1 [ class "WritingTitle" ] [ text "Brandon's Net Niche" ]
    , p [ class "lead", class "WritingDescription" ] [ text "Sup Internet. I am here too." ]
    --, h1 [ Style.writingTitle ] [ text "A Rotten Register" ]
    --, p [ class "lead", Style.writingDescription ] [ text "Everything that you thought you didn't want to hear." ]
    ]

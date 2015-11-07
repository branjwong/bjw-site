-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/cover/

module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar

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
    div []
        [ NavBar.navBar model.currentPage []
        , homeHeader
        ]

main : Html
main =
    view model

homeHeader =
  div
    [ Style.writingHeader ]
    [ h1 [ Style.writingTitle ] [ text "Brandon's Niche in the Net." ]
    , p [ class "lead", Style.writingDescription ] [ text "Sup Internet. Now I am here too." ]
    --, h1 [ Style.writingTitle ] [ text "A Rotten Register" ]
    --, p [ class "lead", Style.writingDescription ] [ text "Everything that you thought you didn't want to hear." ]
    ]

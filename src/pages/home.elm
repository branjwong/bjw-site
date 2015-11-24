-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/cover/

module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Header
import Notices
import Footer

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

main : Html
main =
  view model

view : Model -> Html
view model =
  div 
    []
    [ PrintStyle.stylesheet SharedStyles.exports
    , NavBar.navBar model.currentPage []
    , NavBar.navBarSpace
    , Notices.notLive
    , Header.header "Home" "Brandon's Net Niche" "Sup Internet. I am here too." True
    , home
    , Footer.footer "Teaching"
    ]




home =
  div
    [ class "container HomeContainer"
    ]
    [ div
      [ class "row" ]
      []
    ]

module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import Style.SharedStyles exposing (..)
import Style.PrintStyle exposing (..)

import Title
import NavBar
import Header
import Notices
import Footer

import Bootstrap
import Lorem


port title : String
port title = Title.home

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
    [ stylesheet exports
    , NavBar.navBar model.currentPage []
    , NavBar.navBarSpace
    , Notices.notLive
    , introImage
    --, Header.header "Home" "My Net Niche" "Sup Internet!"
    , trifecta
    , home
    , Footer.footer ""
    ]

----------------------------------------------------------------------------------------------------------------

introImage = 
  div 
    [ class "container" ]
    [ div 
      [ class "row" ]
      [ div 
        [ class "col-sm-12" ]
        [ div
          [ class "HomeIntroImageBorder" ]
          [ div
            [ class "HomeIntroImage" ]
            [ Bootstrap.image "" ]  
          ]
        ]
      ]
    ]
  

trifecta =
  let 
    col string =
      div 
        [ class "col-sm-4" ]
        [ text string ]
  in
    div
      [ class "container" ]
      [ div
        [ class "HomePaddedContainer" ]
        [ div
          [ class "row" ]
          [ col Lorem.short
          , col Lorem.short
          , col Lorem.short
          ]
        ]
      ]

home =
  let 
    col string =
      div 
        [ class "col-sm-4" ]
        [ text string ]
  in
    div
      [ class "container HomeMainBodyPre" ]
      [ div
        [ class "HomeMainBody" ]
        [ div
          [ class "row" ]
          [ col Lorem.ipsum
          , col Lorem.ipsum
          , col Lorem.ipsum
          ]
        ]
      ]

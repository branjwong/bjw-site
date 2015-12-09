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
    , Notices.earlyVer
    , home
    , Footer.footer "Teaching"
    ]

home : Html
home =
  div 
    [ class "container" ]
    [ div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-3"]
        [ block "Teaching" "/dist/html/teaching.html" ]
      , div
        [ class "col-sm-2" ]
        [ block "Programming" "/dist/html/programming.html" ]
      , div
        [ class "col-sm-2" ]
        [ block "Writing" "/dist/html/writing.html" ]
      ]
    , div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-3"]
        [ block "Latest Guide" "/dist/html/writing/guide/latest" ]
      , div
        [ class "col-sm-2" ]
        [ block "Site Code" "https://github.com/branjwong/bjw-site" ]
      , div
        [ class "col-sm-2" ]
        [ block "Latest Blog" "/dist/html/writing/what-i-am-doing-with-my-life.html" ]
      ]
    , div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-5"]
        [ block "Megaman Game" "/dist/html/programming/megaman/megaman.html" ]
      , div
        [ class "col-sm-2" ]
        [ block "Latest Review" "/dist/html/writing/cross-game.html" ]
      ]
    , div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-7"]
        [ block "Latest Pick" "/dist/html/writing.html" ]
      ]
    ]

block : String -> String -> Html
block title link = 
  div
    [ class "BlockDiv" ]
    [ div
      [ style
        [ ("text-align", "center") ]
      ]
      [ a
        [ href link ]
        [ text title ]
      ]
    , div
      [ class "BlockRim" ]
      [ div
        [ class "Block" ]
        []
      ]
    ]
 
module Home where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Header
import Notices
import Footer

import Bootstrap
import Lorem

port title : String
port title = "Home"

main : Html
main =
  div 
    []
    [ NavBar.navBar "Home"
    , NavBar.navBarSpace
    , home
    , Footer.footer
    ]

home : Html
home =
  div 
    [ class "container HomeContainer" ]
    [ div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-3"]
        [ block "Teaching" "/teaching.html" ]
      , div
        [ class "col-sm-2" ]
        [ block "Programming" "/programming.html" ]
      , div
        [ class "col-sm-2" ]
        [ block "Writing" "/writing.html" ]
      ]
    , div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-3"]
        [ block "Latest Guide" "/writing/guide/latest" ]
      , div
        [ class "col-sm-2" ]
        [ block "Site Code" "https://github.com/branjwong/bjw-site" ]
      , div
        [ class "col-sm-2" ]
        [ block "Latest Blog" "writing/blog/latest" ]
      ]
    , div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-5"]
        [ block "Megaman Game" "programming/megaman/megaman.html" ]
      , div
        [ class "col-sm-2" ]
        [ block "Latest Review" "/writing/reviews/latest" ]
      ]
    , div
      [ class "row" ]
      [ div
        [ class "col-sm-2 col-sm-offset-7"]
        [ block "Latest Pick" "/writing/picks/latest" ]
      ]
    , div 
      [ class "row" ]
      [ div
        [ class "HomeExtraSpace" ]
        []
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
 

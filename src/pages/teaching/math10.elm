module MathTen where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

import Style.PrintStyle exposing (stylesheet)
import Style.SharedStyles exposing (exports)

import Teaching.Helper

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"


tytle = .title Teaching.Helper.math10


main : Html
main = 
 div
    [ ]
    [ stylesheet exports
    , NavBar.navBar "" []
    , NavBar.navBarSpace
    , Header.header "Default" "Learning Outcomes" (.title Teaching.Helper.math10) 
    , subjectInfo
    , Footer.footer
    ]


subjectInfo : Html
subjectInfo =
  div
    [ class "container ProgrammingContainer" --TODO: Fix
    ]
    [ div
      [ class "row" ]
      [ Markdown.toHtml (.learningOutcome Teaching.Helper.math10) ]
    ]

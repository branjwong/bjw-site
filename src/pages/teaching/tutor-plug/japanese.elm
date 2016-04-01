module Japanese where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

import Teaching.PlugHelper

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"


tytle = .title Teaching.PlugHelper.japanese


main : Html
main = 
 div
    [ ]
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Default" "Learning Outcomes" (.title Teaching.PlugHelper.japanese) 
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
      [ Markdown.toHtml (.learningOutcome Teaching.PlugHelper.japanese) ]
    ]

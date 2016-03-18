module PhysTwelve where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

import Teaching.Helper

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"


tytle = .title Teaching.Helper.phys12


main : Html
main = 
 div
    []
    [ NavBar.navBar "" []
    , NavBar.navBarSpace
    , Header.header "Default" "Learning Outcomes" (.title Teaching.Helper.phys12) 
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
      [ Markdown.toHtml (.learningOutcome Teaching.Helper.phys12) ]
    ]

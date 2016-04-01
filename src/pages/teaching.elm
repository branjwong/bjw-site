module Teaching where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown

import NavBar
import Notices
import Header
import Footer

import Disqus

port title: String
port title =  "Teaching | BJW"


main : Html
main =
  div
    [ ]
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Default" "The Library" "Bunch of learning goodness."
    , teaching
    , Footer.footer
    ]


teaching : Html
teaching =
  div
    [ class "container ProgrammingContainer"
    ]
    [ div
      [ class "row" ]
      [ Markdown.toHtml body
      ]
    ]

body =
  """

* [Factoring Trinomials Lesson](/factoring-trinomials)
* [Trinomial Worksheet Generator](/trinomial-generator-worksheet)
* [Brandon Tutors! Check out his advertisement.](/tutor-plug)

  """
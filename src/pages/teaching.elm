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
    [ NavBar.navBar "Programming"
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

* [Factoring Trinomials Lesson](/dist/html/teaching/factoring-trinomials.html)
* [Trinomial Worksheet Generator](/dist/html/teaching/trinomial-generator.html)
* [Brandon Tutors! Check out his advertisement.](/dist/html/teaching/tutor-plug.html)

  """
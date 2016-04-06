module Teaching where

import Html exposing (..)
import Html.Attributes exposing (..)
import Window
import Markdown

import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)
import NavBar
import Notices
import Header
import Footer
import Disqus

port title: String
port title =  "Teaching | BJW"

type alias Model = Int

model : Signal Model
model = Window.height

main : Signal Html
main =
  Signal.map view model

view : Model -> Html
view model =
  div
    []
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Default" "Teaching" "A bunch of learning goodness."
    , teaching
    , space model
    , Footer.footer
    ]


space : Model -> Html
space model = 
  let 
    heightContainer = 150
    spaceTakenSoFar = heightNavBar + heightHeader + heightContainer + heightFooter
    result =
      if model - spaceTakenSoFar > 0 then
        model - spaceTakenSoFar + 1
      else
        0
  in
    div 
      [ style [ ("height" , toString result ++ "px" ) ] ]
      []

teaching : Html
teaching =
  div
    [ class "container" ]
    [ div
      [ class "row" ]
      [ div 
          [ class "Markdown" ]
          [ Markdown.toHtml body ]
      ]
    ]

body =
  """

* [Factoring Trinomials Lesson](/factoring-trinomials)
* [Trinomial Worksheet Generator](/trinomial-generator-worksheet)
* [Brandon Tutors! Check out his advertisement.](/tutor-plug)

  """
module Teaching exposing (main) --where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Window exposing (Size)
import Markdown

import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)
import NavBar
import Notices
import Header
import Footer
import Disqus

--port title =  "Teaching | BJW"

main =
  Html.program
    { init = (Size 0 0, Cmd.none)
    , update = update
    , subscriptions = subscriptions
    , view = view
    }

subscriptions : Model -> Sub Msg
subscriptions model =
  Window.resizes Resize

type alias Model = Size

type Msg
  = Resize Size

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Resize size ->
      (size,  Cmd.none)

view : Model -> Html msg
view model =
  div
    []
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Teaching" "A bunch of learning goodness."
    , teaching
    , space model.height
    , Footer.footer
    ]

space : Int -> Html msg
space height = 
  let 
    heightContainer = 150
    spaceTakenSoFar = heightNavBar + heightHeader + heightContainer + heightFooter
    result =
      if height - spaceTakenSoFar > 0 then
        height - spaceTakenSoFar + 1
      else
        0
  in
    div 
      [ style [ ("height" , toString result ++ "px" ) ] ]
      []

teaching : Html msg
teaching =
  div
    [ class "container" ]
    [ div
      [ class "row" ]
      [ Markdown.toHtml [ class "Markdown" ] body 
      ]
    ]

body = """

[Brandon Tutors! More Info Here](/tutor-plug)
================================

* * *

Lessons
=======

* [Factoring Trinomials Lesson](/factoring-trinomials)

* * *

Helpful Applications
====================
  
* [Trinomial Worksheet Generator](/trinomial-generator-worksheet)

  """
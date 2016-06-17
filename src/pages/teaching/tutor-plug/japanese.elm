module Japanese where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
import Window

import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"

tytle = "Japanese"

type alias Model = Int

model : Signal Model
model = Window.height

main : Signal Html msg
main =
  Signal.map view model

view : Model -> Html msg
view model =
 div
    [ ]
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Learning Outcomes" tytle
    , subjectInfo
    , space model
    , Footer.footer
    ]

space : Model -> Html msg
space model = 
  let 
    heightContainer = 180
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

subjectInfo : Html msg
subjectInfo =
  div
    [ class "container" ]
    [ div
      [ class "row" ]
      [ div 
        [ class "Markdown" ]
        [ body ]
      ]
    ]

body = 
  Markdown.toHtml """

As an former exchange of Kansai Gaidai University, I teach from the same curriculum and textbook that their professors developed. This textbook and curriculum has done so well that it has been adopted in classes all over the world. I have seen it with my own eyes being used in classrooms at Simon Fraser University.

http://genki.japantimes.co.jp/wp-content/uploads/genki_syllabus_en.jpg  
http://wpgenki.whitebase.co.jp/wp-content/uploads/06text_img1.jpg

  """





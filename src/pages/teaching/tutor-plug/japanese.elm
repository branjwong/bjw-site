module Japanese where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
import Window

import Teaching.PlugHelper
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"

tytle = .title Teaching.PlugHelper.japanese

type alias Model = Int

model : Signal Model
model = Window.height

main : Signal Html
main =
  Signal.map view model

view : Model -> Html
view model =
 div
    [ ]
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Default" "Learning Outcomes" (.title Teaching.PlugHelper.japanese) 
    , subjectInfo
    , space model
    , Footer.footer
    ]

space : Model -> Html
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

subjectInfo : Html
subjectInfo =
  div
    [ class "container" ]
    [ div
      [ class "row" ]
      [ div 
        [ class "Markdown" ]
        [ Markdown.toHtml (.learningOutcome Teaching.PlugHelper.japanese) ]
      ]
    ]

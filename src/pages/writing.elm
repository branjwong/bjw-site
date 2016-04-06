module Writing where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
import Window

import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)
import NavBar
import Header
import Footer

port title: String
port title =  "Writing" ++ " | BJW"

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
    , Header.header "Default" "Writing" "Where the archive of all my written work resides."
    , div
      [ class "container" ]
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ div 
            [ class "Markdown" ]
            [ Markdown.toHtml content ]
          ]
        ]
      ]
    , space model
    , Footer.footer
    ]

space : Model -> Html
space model = 
  let 
    heightContainer = 536
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

content = """


Blog Posts
==========

* [2016/04/01 - April Fools](/april-fools)
* [2016/04/01 - Moving Back To Japan](/moving-back-to-japan)
* [2015/11/20 - What I Am Doing With My Life](/what-i-am-doing-with-my-life)

Japan

* [2013/02/15 - Nominated](https://braninjapan.wordpress.com/2013/02/15/nominated/)
* [2013/02/16 - Celebration](https://braninjapan.wordpress.com/2013/02/16/celebration/)
* [2013/03/22 - KGU Application Done](https://braninjapan.wordpress.com/2013/03/22/kgu-application-done/)
* [2013/03/23 - Predeparture Sesson](https://braninjapan.wordpress.com/2013/03/23/pre-departure-session/)
* [2013/05/07 - Accepted](https://braninjapan.wordpress.com/2013/05/07/accepted-for-real-this-time/)
* [2013/06/09 - Blisters, Bonfires, and Big Life Decisions](https://braninjapan.wordpress.com/2013/06/09/blisters-bonfires-and-big-life-decisions/)
* [2013/07/09 - What Should I Become](https://braninjapan.wordpress.com/2013/07/09/what-should-i-become/)
* [2013/08/31 - Osaka-shi](https://braninjapan.wordpress.com/2013/08/31/day-10-august-31-osaka-shi/)
* (https://braninjapan.wordpress.com/2013/08/30/day-9-august-30-kyoto/)
* (https://braninjapan.wordpress.com/2013/08/29/day-8-august-29/)




### Reviews
  
* [Cross Game](/cross-game)

"""
{-
### Picks

- Nothing
-}
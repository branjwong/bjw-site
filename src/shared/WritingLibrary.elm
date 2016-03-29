module WritingLibrary where

import Dict
import Debug

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown

import NavBar
import Header
import Notices
import Footer
import Disqus


(=>) = (,)


writing : String -> String -> Html
writing currentPage content =
  div 
    []
    [ NavBar.navBar currentPage 
    , NavBar.navBarSpace
    , Header.header "Default" "The Depository" "Where the archive of all my written work resides."
    , container content
    , Footer.footer
    ]

container : String -> Html
container content = 
  let
    extraSpace =
      div
        [ class "WritingExtraSpace" ]
        []
  in
    div
      [ class "container WritingContainer" ]
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ Markdown.toHtml content ]
        , extraSpace
        ]
      ]

post : String -> Date -> Time -> List Html -> Html
post title date time body =
  div 
    []
    [ NavBar.navBar ""
    , NavBar.navBarSpace
    , div
      [ class "container WritingContainer" ]
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ div
            [ class "WritingPost" ]
            [ h1 [] [ text title ]
            , h6 [] [ text (postInfo date time) ]
            , div []
              body
            ]
          ]
        ]
      , Disqus.exports
      ]
    , Footer.footer 
    ]

postInfo : Date -> Time -> String
postInfo date time = 
  "Posted On: " ++ dateToString date ++ " - " ++ timeToString time


-- DATES

type alias Date =
    { year : Int
    , month : Int
    , day : Int
    }


dateToString : Date -> String
dateToString date =
  case Dict.get date.month months of
    Nothing ->
      Debug.crash "invalid date"

    Just month ->
      toString date.day ++ " " ++ month ++ " " ++ toString date.year



months : Dict.Dict Int String
months =
  Dict.fromList
    [ 1 => "Jan"
    , 2 => "Feb"
    , 3 => "Mar"
    , 4 => "Apr"
    , 5 => "May"
    , 6 => "June"
    , 7 => "July"
    , 8 => "Aug"
    , 9 => "Sep"
    , 10 => "Oct"
    , 11 => "Nov"
    , 12 => "Dec"
    ]

-- TIMES

type alias Time =
    { hour : Int
    , minute : Int
    , notation: String
    }

timeToString : Time -> String
timeToString time =
  toString time.hour ++ ":" ++ toString time.minute ++ time.notation
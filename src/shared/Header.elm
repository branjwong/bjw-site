module Header where

import Html exposing (..)
import Html.Attributes exposing (..)

header : String -> String -> Html
header headText subText =
  div
  [ class ("Header") ]
  [ div 
    [ class "container" ]
    [ div
      [ class ("HeaderInner") ]
      [ h1 [ class ("HeaderTitle") ] [ text headText ]
      , p [ class ("lead " ++ "HeaderDesc") ] [ text subText ]
      ]
    ]
  ]

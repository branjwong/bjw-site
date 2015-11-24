module Header where

import Html exposing (..)
import Html.Attributes exposing (..)

header : String -> String -> String -> Html
header pageName headText subText =
  div 
    [ class "row" ]
    [ div 
      [ class "col-sm-12" ]
      [ div
        [ class (pageName ++ "Header") ]
        [ div 
          [ class "container" ]
          [ div
            [ class (pageName ++ "HeaderInner") ]
            [ h1 [ class (pageName ++ "HeaderTitle") ] [ text headText ]
            , p [ class ("lead " ++ pageName ++ "HeaderDesc") ] [ text subText ]
            ]
          ]
        ]
      ]
    ]
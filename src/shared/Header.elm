module Header where

import Html exposing (..)
import Html.Attributes exposing (..)

header : String -> String -> String -> Bool -> Html
header pageName headText subText containerBool =
  let 
    possibleContainer =
      case containerBool of
        True ->
          "container"
        False ->
          ""
  in      
    div 
      [ class "row" ]
      [ div 
        [ class "col-sm-12" ]
        [ div
          [ class (pageName ++ "Header") ]
          [ div 
            [ class possibleContainer ]
            [ div
              [ class (pageName ++ "HeaderInner") ]
              [ h1 [ class (pageName ++ "HeaderTitle") ] [ text headText ]
              , p [ class ("lead " ++ pageName ++ "HeaderDesc") ] [ text subText ]
              ]
            ]
          ]
        ]
      ]
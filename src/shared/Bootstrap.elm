module Bootstrap where

import Html exposing (..)
import Html.Attributes exposing (..)

import Style


accordion : String -> String -> List Html -> Html
accordion acName column panels =
  div
    [ class column ]
    [ div
      [ class "panel-group"
      , id ("accordion" ++ acName)
      , Style.teachingAccordion
      ]
      [ div 
        [ class "panel panel-default" ]
        panels
      ]
    ]

panelHeading : String -> Int -> String -> Html
panelHeading acName pnID panelTitle = 
  let 
    pnName = acName ++ (toString pnID)
    newAcName = acName
  in
    div
      [ class "panel-heading"
      , id ("heading" ++ pnName )
      ]
      [ h4
        [ class "panel-title" ]
        [ a
          [ href ("#collapse" ++ pnName)
          , attribute "data-toggle" "collapse"
          , attribute "data-parent" ("#accordion" ++ newAcName)
          ]
          [ text panelTitle ]
        ]
      ]

panelBody : String -> Int -> Html -> Html
panelBody acName pnID panelContent =
  let 
    pnName = acName ++ (toString pnID)
  in
    div
      [ id ("collapse" ++ pnName)
      , class "panel-collapse collapse" -- .collapse hides content // .collapse.in shows content
      ]
      [ div
        [ class "panel-body" ]
        [ panelContent ]
      ]

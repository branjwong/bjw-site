module Bootstrap where

import Html exposing (..)
import Html.Attributes exposing (..)

import Style


panelHeading idName panelName = 
  div
    [ class "panel-heading"
    , id ("heading" ++ idName )
    ]
    [ h4
      [ class "panel-title" ]
      [ a
        [ href ("#collapse" ++ idName)
        , attribute "data-toggle" "collapse"
        , attribute "data-parent" "#accordion"
        ]
        [ text panelName ]
      ]
    ]

panelBody idName panelContent =
  div
    [ id ("collapse" ++ idName)
    , class "panel-collapse collapse" -- .collapse hides content // .collapse.in shows content
    ]
    [ div
      [ class "panel-body" ]
      [ panelContent ]
    ]

accordion column panels =
  div
    [ class column ]
    [ div
      [ class "panel-group"
      , id "accordion"
      , Style.teachingAccordion
      ]
      [ div 
        [ class "panel panel-default" ]
        panels
      ]
    ]
module Bootstrap where

import Html exposing (..)
import Html.Attributes exposing (..)

----------------------------------------------------------------------------------------------------------------

accordion : String -> String -> List Html -> Html
accordion acName column panels =
  div
    [ class column ]
    [ div
      [ class "panel-group BootstrapAccordion"
      , id ("accordion" ++ acName)
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

panelBody : String -> Int -> Bool -> Html -> Html
panelBody acName pnID panelHide panelContent =
  let 
    pnName = acName ++ (toString pnID)
  in
    if panelHide == True
    then
      div
        [ id ("collapse" ++ pnName)
        , class "panel-collapse collapse in" -- .collapse hides content // .collapse.in shows content
        ]
        [ div
          [ class "panel-body" ]
          [ panelContent ]
        ]
    else
      div
        [ id ("collapse" ++ pnName)
        , class "panel-collapse collapse" -- .collapse hides content // .collapse.in shows content
        ]
        [ div
          [ class "panel-body" ]
          [ panelContent ]
        ]


----------------------------------------------------------------------------------------------------------------

image styleCust path =
  div
    [ class "row" ]
    [ div
      [ class "col-md-12"
      ]
      [ img
        [ src path
        , class ("img-responsive " ++ styleCust)
        ]
        []
      ]
    ]

pageHeader styleCust title =
  div 
    [ class "row" ]
    [ div 
      [ class "col-md-12" ]
      [ div 
        [ class ("page-header " ++ styleCust)
        ]
        [ h1 [] [ text title ] ]
      ]
    ]

----------------------------------------------------------------------------------------------------------------
-- Doesn't work

panel acName pnID panelTitle panelHide panelContent =
  div 
    []
    [ panelHeading acName pnID panelTitle
    , panelBody acName pnID panelHide panelContent
    ]
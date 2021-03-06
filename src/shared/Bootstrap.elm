module Bootstrap exposing (..) -- where

import Html exposing (..)
import Html.Attributes exposing (..)

{-
accordion "bio" "col-sm-12" (List Html)
-}
accordion : String -> String -> List (Html msg) -> Html msg
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
{-
panelHeading bio 1 "Title"
-}
panelHeading : String -> Int -> String -> Html msg
panelHeading acName pnID panelTitle = 
  let 
    pnName = acName ++ (toString pnID)
  in
    div
      [ class "panel-heading"
      , id ("heading" ++ pnName)
      ]
      [ h4
        [ class "panel-title" ]
        [ a
          [ href ("#collapse" ++ pnName)
          , attribute "data-toggle" ("collapse")
          , attribute "data-parent" ("#accordion" ++ acName)
          ]
          [ text panelTitle ]
        ]
      ]

panelBody : String -> Int -> Bool -> Html msg -> Html msg
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

image path =
  div
    [ class "row" ]
    [ div
      [ class "col-md-12"
      ]
      [ img
        [ src path
        , class "img-responsive"
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
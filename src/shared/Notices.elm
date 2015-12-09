module Notices where

import Html exposing (..)
import Html.Attributes exposing (..)

notLive =
  let
    string = "This page has yet to go live! Do not be surprised by dummy text or things that are not looking right."
  in
    div
      [ class "row" ] 
      [ div
        [ class "Notices" ]
        [ div 
          [ class "container" ]
          [ text string ]
        ]
      ]

earlyVer =
  let
    string = "This is an early, minimal version of this page! I know it's ugly, but at least it works."
  in
    div
      [ class "row" ] 
      [ div
        [ class "Notices" ]
        [ div 
          [ class "container" ]
          [ text string ]
        ]
      ]
 
nothing =
  let
    string = ""
  in
    div
      [ class "row" ] 
      [ div
        [ class "Notices"
        , style
          [ ("height", "40Xpx")]
        ]
        [ div 
          [ class "container" ]
          [ text string ]
        ]
      ]
 
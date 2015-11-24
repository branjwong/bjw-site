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
        [ class "NoticesNotLive" ]
        [ div 
          [ class "container" ]
          [ text string ]
        ]
      ]
 
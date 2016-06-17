module Notices exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

notice string =
  div
    [ class "row" ] 
    [ div
      [ class "Notices"
      ]
      [ div 
        [ class "container" ]
        [ text string ]
      ]
    ]

none = 
  div
    [ class "row" ] 
    [ div
      [ class "Notices"
      ]
      [ div 
        [ class "NoticesNoText" ]
        []
      ]
    ]

notLive = 
  notice "This page has yet to go live! Do not be surprised by dummy text or things that are not looking right."

earlyVer = 
  notice  "This is an early, minimal version of this page! I know it's lackluster, but at least it works."

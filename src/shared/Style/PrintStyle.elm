module Style.PrintStyle (stylesheet) where

import Html exposing (..)
import Html.Attributes exposing (..)
import Json.Encode as Encode

import Stylesheets


stylesheet exports = 
  div 
    [ Html.Attributes.property "innerHTML" (Encode.string ("<style>" ++ (Stylesheets.prettyPrint 4 exports) ++ "</style>")) 
    ] 
    []
module Footer where

import Html exposing (..)
import Html.Attributes exposing (..)

footer : String -> Html
footer pageName =
  div
    [ class (pageName ++ "Footer") ]
    []

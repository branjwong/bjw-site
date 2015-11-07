module Centre where

import Html exposing (..)
import Html.Attributes as Attr exposing (..)
import Markdown


(=>) = (,)


markdown string =
  div
    [ class "container" ]
    [ div
      [ class "starter-template" ]
      [ Markdown.toHtml string ]
    ]

element html =
    div
    [ class "container" ]
    [ div
      [ class "starter-template" ]
      [ html ]
    ]


--style width =
--  Attr.style
--    [ "display" => "block"
--    , "width" => width
--    , "margin" => "0 auto"
--    ]
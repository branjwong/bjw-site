module Center where

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


--style width =
--  Attr.style
--    [ "display" => "block"
--    , "width" => width
--    , "margin" => "0 auto"
--    ]
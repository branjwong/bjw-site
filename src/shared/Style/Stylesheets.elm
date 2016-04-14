module Stylesheets (..) where

import Css.File exposing (..)
import Style.CssStyle as Style


port files : CssFileStructure
port files =
  toFileStructure
    [ ( "style.css", compile Style.css ) 
    ]

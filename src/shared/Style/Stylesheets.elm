module Stylesheets (..) where

import Css.File exposing (..)
import Style.MainCss as Main


port files : CssFileStructure
port files =
  toFileStructure
    [ ( "style.css", compile Main.css ) 
    ]

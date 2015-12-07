module Style.ProgrammingStylesheet where

import Css exposing (..)
import Style.SharedStyles exposing (..)
import Style.SharedValues exposing (..)

type CssClasses 
  = ProgrammingContainer
  | ProgrammingHeader

port css : String
port css =
  Css.prettyPrint 4 <|
    stylesheet
      |.| ProgrammingContainer
        |-| marginTop 50 px

      |.| ProgrammingHeader
        |-| backgroundColor colorHighlight
        |-| paddingTop 20 px
        |-| paddingBottom 30 px
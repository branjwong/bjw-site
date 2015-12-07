module Style.SharedStyles where

import Css exposing (..)
import Style.SharedValues exposing (..)

type CssClasses 
  = NavBar
  | NavBarTop
  | NavBarSpace
  | NavBarIconBar
  | NoticesNotLive
  | BootstrapAccordion


type CssIds
  = None


port css : String
port css =
  Css.prettyPrint 4 <|
    stylesheet
      |%| body
        |-| marginTop 0 px
        |-| color colorHeading
        |-| backgroundColor colorBodyBackground
        |-| fontFamily "'Open Sans', sans-serif"
        --|-| fontFamily "Verdana, 'Bitstream Vera Sans', sans-serif"

  ---------------------------------------------------------------------------------------------------------

      |.| NavBar
        |-| backgroundColor colorNavBarBackground
        |-| color colorHighlight
        |-| marginBottom 0 px

      |.| NavBarTop
        |-| backgroundColor colorHighlight 
        |-| height heightNavBarTop px

      |.| NavBarSpace
        |-| height heightNavBar px
        |-| backgroundColor colorHighlight

      |.| NavBarIconBar
        |-| backgroundColor colorHighlight

  ---------------------------------------------------------------------------------------------------------

      |.| NoticesNotLive
        |-| backgroundColor (hex "333")
        |-| color (hex "FFF")
        |-| textAlign "center"
        |-| paddingTop 10 px
        |-| paddingBottom 10 px
        |-| fontWeight "bold"


  ----------------------------------------------------------------------------------------------------------------

      |.| BootstrapAccordion 
        --|-| paddingTop 20 px
        |-| color colorStandardText



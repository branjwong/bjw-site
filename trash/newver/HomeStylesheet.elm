module Style.HomeStylesheet where

import Css exposing (..)
import Style.SharedStyles exposing (..)
import Style.SharedValues exposing (..)

type CssClasses 
  = HomeContainer
  | HomeHeader
  | HomeHeaderInner
  | HomeHeaderTitle
  | HomeHeaderDesc
  | HomeIntroImage
  | HomeIntroImageBorder
  | HomePaddedContainer
  | HomeMainBodyPre
  | HomeMainBody

port css : String
port css =
  Stylesheets.prettyPrint 4 <|
    stylesheet
      |.| HomeContainer

      |.| HomeIntroImageBorder
          |-| padding 5 px
          |-| margin 10 px 
          |-| backgroundColor colorContentBackground

      |.| HomeIntroImage
          |-| height 300 px
          |-| width 500 px
          |-| backgroundColor (hex "454545")

      |.| HomeMainBodyPre
          |-| paddingTop 10 px

      |.| HomeMainBody
          |-| padding 30 px
          |-| paddingTop 50 px
          |-| backgroundColor colorContentBackground
          |-| height 500 px

      |.| HomeHeader
          |-| backgroundColor colorHighlight
          |-| paddingTop 20 px
          |-| paddingBottom 30 px

      |.| HomeHeaderInner
          |-| backgroundColor colorHighlight

      |.| HomeHeaderTitle
          |-| marginTop 50 px
          |-| marginBottom 0 px
          |-| fontSize 60 px
          |-| fontWeight "normal"

      |.| HomeHeaderDesc
          |-| fontSize 20 px
          |-| color colorSubHeading

      |.| HomePaddedContainer
          |-| margin 10 px
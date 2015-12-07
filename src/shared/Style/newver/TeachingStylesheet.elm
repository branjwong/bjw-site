module Style.TeachingStylesheet where

import Css exposing (..)
import Style.SharedStyles exposing (..)
import Style.SharedValues exposing (..)

type CssClasses 
  = TeachingHeader
  | TeachingHeaderInner
  | TeachingHeaderTitle
  | TeachingHeaderDesc
  | TeachingBioAndCallToAction
  | TeachingImgTakafumi
  | TeachingCallToAction
  | TeachingContainerHeader
  | TeachingImgArea
  | TeachingArrow
  | TeachingFooter


port css : String
port css =
  Css.prettyPrint 4 <|
    stylesheet
      |.| TeachingHeader
        |-| backgroundColor colorHighlight
        |-| paddingTop widthBoarder px
        |-| paddingBottom widthBoarder px

      |.| TeachingHeaderInner
        |-| paddingTop spaceHeaderInner px
        |-| height heightTeachingHeader px
        |-| backgroundColor colorHighlight
        |-| textAlign "center"

      |.| TeachingHeaderTitle 
        |-| marginTop 0 px
        |-| marginBottom 0 px
        |-| fontSize sizeHeaderTitleText px
        |-| fontWeight "normal"

      |.| TeachingHeaderDesc 
        |-| fontSize sizeHeaderDescText px
        |-| color colorSubHeading

      |.| TeachingBioAndCallToAction
        |-| paddingTop 20 px
        |-| paddingBottom 20 px

      |.| TeachingImgTakafumi 
        |-| marginTop 40 px
        |-| marginBottom 40 px

      |.| TeachingCallToAction 
        |-| marginTop 20 px

      |.| TeachingContainerHeader
        |-| borderBottomColor colorHighlight

      |.| TeachingImgArea
        --|-| paddingBottom 40 px

      |.| TeachingArrow
        |-| borderStyle "solid"
        |-| borderColor "transparent"
        |-| borderTopColor colorHighlight
        |-| borderTopWidth 22 px
        |-| borderRightWidth 28 px
        |-| borderBottomWidth 0 px
        |-| borderLeftWidth 28 px
        |-| left 0 px
        |-| right 0 px
        |-| content ""
        |-| margin2 "auto"
        |-| width 0 px
        --|-| position "absolute"

      |.| TeachingFooter
        |-| backgroundColor colorHighlight
        |-| height 60 px
        |-| marginTop 40 px
        --|-| paddingTop widthBoarder px
        --|-| paddingBottom widthBoarder px
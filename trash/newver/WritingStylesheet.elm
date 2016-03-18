module Style.WritingStylesheet where

import Css exposing (..)
import Style.SharedStyles exposing (..)
import Style.SharedValues exposing (..)

type CssClasses 
  = WritingContainer
  | WritingHeader
  | WritingHeaderInner
  | WritingHeaderTitle
  | WritingHeaderDesc
  | WritingPost


port css : String
port css =
  Css.prettyPrint 4 <|
    stylesheet
      |.| WritingContainer
        |-| backgroundColor colorContentBackground
        |-| marginTop 20 px
        |-| padding postPadding px

      --|.| WritingHeader
      --    |-| backgroundColor colorHighlight
      --    |-| paddingTop 20 px
      --    |-| paddingBottom 30 px

      --|.| WritingHeaderInner
      --    |-| backgroundColor colorHighlight
      --    |-| textAlign "center"

      --|.| WritingHeaderTitle
      --    |-| marginTop 50 px
      --    |-| marginBottom 0 px
      --    |-| fontSize 60 px
      --    |-| fontWeight "normal"

      --|.| WritingHeaderDesc
      --    |-| fontSize 20 px
      --    |-| color colorSubHeading

      |.| WritingPost
        --|-| paddingLeft postPadding px
        --|-| paddingRight postPadding px
        --|-| paddingBottom postPadding px
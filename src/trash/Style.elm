module Style where

import Html exposing (..)
import Html.Attributes exposing (..)

(=>) = (,)



----------------------------------------------------------------------------------------------------------------
-- COLOUR
-- http://webdesign.tutsplus.com/tutorials/6-beginner-safety-first-color-guidelines-for-the-web--cms-21462

-- Background Colors

colorHighlight = "#2B74C6"
colorBodyBackground = "#DDD"
colorNavBarBackground = "#FFF"


-- Text Colors Against Site Background

colorHeading = "#333"
subcolorHeading = "#999"
colorStandardText = colorHeading



-- Trash

{-}
colorNavBarBackground_ThemeDark = "#2C1E1E"
colorBodyBackground_ThemeDark = "#302C2C"

colorHeading_ThemeDark = "#FFF"
subcolorHeading_ThemeDark = "#999"

text1Color_ThemeDark = "#333"
text2Color_ThemeDark = "#999"
-}

----------------------------------------------------------------------------------------------------------------

heightNavBarTop = 5
heightNavBar = 50 + heightNavBarTop

heightAsusScreen = 1080
heightAsusBrowser = 951
heightHpScreen = 768
heightHpBrowser = 639

widthBoarder = 15
heightTeachingHeader = heightHpBrowser - heightNavBar - 2*widthBoarder

sizeTitleText = 60
sizeTitleDescText = 20

spaceInnerHeader = round(heightTeachingHeader/2 - (sizeTitleText + sizeTitleDescText)/2)


----------------------------------------------------------------------------------------------------------------

toPx : Int -> String
toPx x = 
  (toString x) ++ "px"


----------------------------------------------------------------------------------------------------------------

body = 
  style
    [ "margin-top" => "0"
    , "color" => colorHeading
    , "background-color" => colorBodyBackground
    , "font-family" => "Verdana, 'Bitstream Vera Sans', sans-serif"
    ]

----------------------------------------------------------------------------------------------------------------

navBarTop =
  style
    [ "background-color" => colorHighlight
    , "height" => (toPx heightNavBarTop)
    ]

navBarMain =
  style
    [ "background-color" => colorNavBarBackground
    , "color" => colorHighlight
    , "margin-bottom" => "0"
    ]

navBarSpace = 
  style
    [ "height" => (toPx heightNavBar)
    , "background-color" => colorHighlight
    ]

----------------------------------------------------------------------------------------------------------------

homeContainer =
  style
    [ "padding-top" => "30px"
    , "height" => "1000px"
    ]

----------------------------------------------------------------------------------------------------------------

writingContainer =
  style
    [ "padding-top" => "30px"
    --, "color" => "#333"
    --, "font-family" => "'Helvetica Neue', Helvetica, Arial, sans-serif"
    --, "font-size" => "14px"
    ]

writingHeader =
  style
    [ "padding-top" => "20px"
    ]

writingTitle =
  style
    [ "margin-top" => "30px"
    , "margin-bottom" => "0px"
    , "font-size" => "60px"
    , "font-weight" => "normal"
    ]

writingDescription =
  style
    [ "font-size" => "20px"
    , "color" => subcolorHeading
    ]

----------------------------------------------------------------------------------------------------------------

teachingHeader =
  style 
  [ "background-color" => colorHighlight
  , "padding-top" => (toPx widthBoarder)
  , "padding-bottom" => (toPx widthBoarder)
  ]

teachingInnerHeader =
  style
    [ "padding-top" => (toPx spaceInnerHeader)
    , "height" => (toPx heightTeachingHeader)
    , "background-color" => colorHighlight
    , "text-align" => "center"
    ]

teachingTitle =
  style
    [ "margin-top" => "0"
    , "margin-bottom" => "0"
    , "font-size" => (toPx sizeTitleText)
    , "font-weight" => "normal"
    ]

teachingTitleDesc =
  style
    [ "font-size" => (toPx sizeTitleDescText)
    , "color" => subcolorHeading
    ]

teachingContainer =
  style
    []

teachingBioAndCallToAction =
  style
    [ "padding-top" => "20px"
    , "padding-bottom" => "20px"
    ]

teachingImgTakafumi =
  style
    [ "margin-top" => "40px"
    , "margin-bottom" => "40px"
    ]

teachingCallToAction =
  style
    [ "margin-top" => "20px"
    ]

teachingSubjectsHeader =
  style
    [ "border-bottom-color" => colorHighlight
    ]

teachingAreaHeader =
  style
    [ "border-bottom-color" => colorHighlight
    ]

teachingImgArea =
  style
    [ "padding-bottom" => "100px"
    ]

teachingArrow =
  style
    [ "border-top-color" => colorHighlight
    , "content" => ""
    , "position" => "absolute"
    , "margin" => "auto"
    ]


----------------------------------------------------------------------------------------------------------------

programmingContainer =
  style
    [ "padding-top" => "30px"
    , "height" => "1000px"
    ]

----------------------------------------------------------------------------------------------------------------

bootstrapAccordion =
  style
    [ "color" => colorStandardText
    , "padding-top" => "20px"
    ]


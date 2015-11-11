module Style where

import Html exposing (..)
import Html.Attributes exposing (..)

(=>) = (,)

-- Background Colors

navBarColor = "#2C1E1E"
bodyColor = "#302C2C"


-- Text Colors Against Site Background

headingColor = "#FFF"
subheadingColor = "#999"

text1Color = "#333"
text2Color = "#999"

-- Text Colors Against White

--text1ColorAlt = "#555"
--text2ColorAlt = "#777"
--text3ColorAlt = "#999"



topBar =
  style
    [ "background-color" => navBarColor
    , "color" => text1Color
    ]

homeContainer =
  style
    [ "height" => "1000px"
    ]

writingContainer =
  style
    [ -- "margin-top" => "20px"
    --, "color" => "#333"
    --, "font-family" => "'Helvetica Neue', Helvetica, Arial, sans-serif"
    --, "font-size" => "14px"
    ]

writingHeader =
  style
    [ "padding-top" => "20px"
    , "padding-bottom" => "20px"
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
    , "color" => text2Color
    ]

teachingContainer =
  style
    []

teachingTakafumiImg =
  style
    [ -- "padding-top" => "10px"
    ]

teachingBio =
  style
    []

teachingAccordion =
  style
    [ "color" => bodyColor
    , "padding-top" => "20px"
    ]

teachingCallToAction =
  style
    [ "margin-top" => "20px"
    ]

{-
teachingResumeH1 = 
  style
    [ "font-size" => "2em"
    , "color" => text1ColorAlt
    , "margin-bottom" => "0px"
    ]

teachingResumeH2 = 
  style
    [ "font-size" => "1.1em"
    , "margin-bottom" => "0px"
    ]

teachingResumeH3 = 
  style
    [ "font-size" => "1.3em"
    ]
-}

programmingContainer =
  style
    [ "height" => "1000px"
    ]
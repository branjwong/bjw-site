module Style where

import Html exposing (..)
import Html.Attributes exposing (..)

(=>) = (,)

bgColor = "#2C1E1E"
text1Color = "#333"
text2Color = "#999"

topBar =
  style
    [ "background-color" => bgColor
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

teachingLanding =
  style
    [ "padding-top" => "10px"
    ]

teachingBio =
  style
    []

programmingContainer =
  style
    [ "height" => "1000px"
    ]
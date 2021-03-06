module Style.SharedValues exposing (..) --where

import Css exposing (..)

{- COLOUR
http://webdesign.tutsplus.com/tutorials/6-beginner-safety-first-color-guidelines-for-the-web--cms-21462
 -}

-- Old Background Colors

colorAccent = hex "922A2A"
colorBlack = hex "323232"
colorGrey = hex "EEE"
colorWhite = hex "FFF"
colorLightRed = hex "C82A2A"

colorA = colorLightRed
colorHighlight = colorAccent
colorBodyBackground = colorGrey
colorContentBackground = colorWhite

colorNavBarBackground = colorBlack

-- Text Colors Against Site Background

colorHeading = hex "333"
colorSubHeading = hex "BBB"
colorStandardText = colorHeading


{- Dimensions, Lengths, Heights
-}

heightNavBarTop = 5
heightNavBar = 50 + heightNavBarTop

heightAsusScreen = 1080
heightAsusBrowser = 951
heightHpScreen = 768
heightHpBrowser = 639

widthBoarder = 15
arrowHeight = 30
heightTeachingHeader = heightHpBrowser - heightNavBar - 2*widthBoarder - arrowHeight

sizeHeaderTitleText = 60
sizeHeaderDescText = 20
sizeHeaderButton = 50

spaceHeaderInner = (heightTeachingHeader/2 - (sizeHeaderTitleText + sizeHeaderDescText)/2)
marginHeaderWithButton = (heightHpBrowser/2 - (sizeHeaderDescText + sizeHeaderTitleText + sizeHeaderButton))
marginHeader = (heightHpBrowser/2 - (sizeHeaderDescText + sizeHeaderTitleText))

postPadding = 30

{- Added Window Space Notes
-}

heightHeader = 214
heightFooter = 60




{- Background Colors

colorA = hex "27AA93"
colorHighlight = hex "360909"
--colorHighlight = hex "601010"
colorBodyBackground = hex "1B1717"
colorContentBackground = hex "FFF"
--colorHighlightBlue = hex "2B74C6"



colorNavBarBackground = colorBodyBackground

-- Text Colors Against Site Background

colorHeading = hex "E1E1E1"
colorSubHeading = hex "BBB"
colorStandardText = colorHeading

-}

{- Teaching Background Colors


colorHighlightTeaching = hex "C62B2B"
colorBodyBackgroundTeaching = hex "EEE"
colorContentBackgroundTeaching = hex "FFF"

colorNavBarBackgroundTeaching = colorContentBackgroundTeaching

-- Text Colors Against Site Background

colorHeadingTeaching = hex "333"
colorSubHeadingTeaching = hex "BBB"
colorStandardTextTeaching = colorHeadingTeaching

-}
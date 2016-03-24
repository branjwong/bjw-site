module Style.SharedValues where

import Css exposing (..)

{-| COLOUR
http://webdesign.tutsplus.com/tutorials/6-beginner-safety-first-color-guidelines-for-the-web--cms-21462
 -}

-- Background Colors

colorA = hex "27AA93"
colorHighlight = hex "360909"
--colorHighlight = hex "601010"
colorBodyBackground = hex "1B1717"
colorContentBackground = hex "FFF"

colorNavBarBackground = colorBodyBackground

-- Text Colors Against Site Background

colorHeading = hex "E1E1E1"
colorSubHeading = hex "BBB"
colorStandardText = colorHeading


{-| Teaching Background Colors
-}

colorHighlightTeaching = hex "C62B2B"
colorBodyBackgroundTeaching = hex "EEE"
colorContentBackgroundTeaching = hex "FFF"

colorNavBarBackgroundTeaching = colorContentBackgroundTeaching

-- Text Colors Against Site Background

colorHeadingTeaching = hex "333"
colorSubHeadingTeaching = hex "BBB"
colorStandardTextTeaching = colorHeadingTeaching


{-| Dimensions, Lengths, Heights
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

{-| Old Background Colors

colorHighlightBlue = hex "2B74C6"
colorHighlight = hex "C62B2B"
colorBodyBackground = hex "EEE"
colorContentBackground = hex "FFF"

colorNavBarBackground = colorContentBackground

-- Text Colors Against Site Background

colorHeading = hex "333"
colorSubHeading = hex "BBB"
colorStandardText = colorHeading

-}
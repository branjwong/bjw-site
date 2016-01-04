module Style.SharedValues where

import Stylesheets exposing (..)

-- COLOUR
-- http://webdesign.tutsplus.com/tutorials/6-beginner-safety-first-color-guidelines-for-the-web--cms-21462

-- Background Colors

colorHighlightBlue = hex "2B74C6"
colorHighlight = hex "C62B2B"
colorBodyBackground = hex "EEE"
colorNavBarBackground = hex "FFF"
colorContentBackground = hex "FFF"


-- Text Colors Against Site Background

colorHeading = hex "333"
colorSubHeading = hex "BBB"
colorStandardText = colorHeading

---------------------------------------------------------------------------------------------------------

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

spaceHeaderInner = round(heightTeachingHeader/2 - (sizeHeaderTitleText + sizeHeaderDescText)/2)
marginHeaderWithButton = round(heightHpBrowser/2 - (sizeHeaderDescText + sizeHeaderTitleText + sizeHeaderButton))
marginHeader = round(heightHpBrowser/2 - (sizeHeaderDescText + sizeHeaderTitleText))


postPadding = 30


module SharedStyles where

import Stylesheets exposing (..)

type CssClasses 
    = NavBar
    | NavBarTop
    | NavBarSpace
    | NavBarIconBar

    | BootstrapAccordion

    | HomeContainer

    | WritingContainer
    | WritingHeader
    | WritingTitle
    | WritingDescription

    | TeachingHeader
    | TeachingInnerHeader
    | TeachingTitle
    | TeachingTitleDesc
    | TeachingBioAndCallToAction
    | TeachingImgTakafumi
    | TeachingCallToAction
    | TeachingSubjectsHeader
    | TeachingAreaHeader

    | ProgrammingContainer
    | ProgrammingHeader


--type CssIds =
--    None

---------------------------------------------------------------------------------------------------------

-- COLOUR
-- http://webdesign.tutsplus.com/tutorials/6-beginner-safety-first-color-guidelines-for-the-web--cms-21462

-- Background Colors

colorHighlight = hex "2B74C6"
colorBodyBackground = hex "DDD"
colorNavBarBackground = hex "FFF"


-- Text Colors Against Site Background

colorHeading = hex "333"
colorSubHeading = hex "999"
colorStandardText = colorHeading

---------------------------------------------------------------------------------------------------------

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


---------------------------------------------------------------------------------------------------------


exports =
    css
        |%| body
            |-| marginTop 0 px
            |-| color colorHeading
            |-| backgroundColor colorBodyBackground
            |-| fontFamily "Verdana, 'Bitstream Vera Sans', sans-serif"

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

        |.| HomeContainer
            |-| paddingTop 30 px
            |-| height 1000 px

---------------------------------------------------------------------------------------------------------

        |.| WritingContainer
            |-| paddingTop 30 px

        |.| WritingHeader
            |-| paddingTop 20 px

        |.| WritingTitle
            |-| marginTop 50 px
            |-| marginBottom 0 px
            |-| fontSize 60 px
            |-| fontWeight "normal"

        |.| WritingDescription
            |-| fontSize 20 px
            |-| color colorSubHeading
            
---------------------------------------------------------------------------------------------------------

        |.| TeachingHeader
            |-| backgroundColor colorHighlight
            |-| paddingTop widthBoarder px
            |-| paddingBottom widthBoarder px

        |.| TeachingInnerHeader
            |-| paddingTop spaceInnerHeader px
            |-| height heightTeachingHeader px
            |-| backgroundColor colorHighlight
            |-| textAlign "center"

        |.| TeachingTitle 
            |-| marginTop 0 px
            |-| marginBottom 0 px
            |-| fontSize sizeTitleText px
            |-| fontWeight "normal"

        |.| TeachingTitleDesc 
            |-| fontSize sizeTitleDescText px
            |-| color colorSubHeading

        |.| TeachingBioAndCallToAction
            |-| paddingTop 20 px
            |-| paddingBottom 20 px

        |.| TeachingImgTakafumi 
            |-| marginTop 40 px
            |-| marginBottom 40 px

        |.| TeachingCallToAction 
            |-| marginTop 20 px

        |.| TeachingSubjectsHeader
            |-| borderBottomColor colorHighlight

        |.| TeachingAreaHeader
            |-| paddingBottom 100 px

        --|.| TeachingArrow
        --    |-| boarderTopColor colorHighlight
        --    |-| content ""
        --    |-| position "absolute"
        --    |-| margin "auto"

---------------------------------------------------------------------------------------------------------

        |.| ProgrammingContainer
            |-| paddingTop 30 px
            |-| height 1000 px

----------------------------------------------------------------------------------------------------------------

        |.| BootstrapAccordion 
            |-| color colorStandardText
            |-| paddingTop 20 px

----------------------------------------------------------------------------------------------------------------

fontSize valueA valueB =
    attr2 "font-size" numberToString unitsToString valueA valueB

fontWeight value =
    attr1 "font-weight" (\a -> a) value

fontFamily value = 
    attr1 "font-family" toString value

textAlign value =
    attr1 "text-align" (\a -> a) value

borderBottomColor value =
    attr1 "border-bottom-color" colorToString value


module Style.SharedStyles where

import Style.SharedValues exposing (..)
import Stylesheets exposing (..)
import Style.CssHelpers exposing (..)

type CssClasses 
    = NavBar
    | NavBarTop
    | NavBarSpace
    | NavBarIconBar

    | Notices

    | BootstrapAccordion

    | HomeContainer
    | HomeHeader
    | HomeHeaderInner
    | HomeHeaderTitle
    | HomeHeaderDesc
    | HomeIntroImage
    | HomeIntroImageBorder
    | HomePaddedContainer
    | HomeMainBodyPre
    | HomeMainBody

    | WritingContainer
    | WritingHeader
    | WritingHeaderInner
    | WritingHeaderTitle
    | WritingHeaderDesc
    | WritingPost

    | TeachingHeader
    | TeachingHeaderInner
    | TeachingHeaderTitle
    | TeachingHeaderDesc
    | TeachingBioAndCallToAction
    | TeachingImgTakafumi
    | TeachingCallToAction
    | TeachingContainerHeader
    | TeachingImgArea
    | TeachingArrow

    | ProgrammingContainer
    | ProgrammingHeader

    | Footer

    | Block
    | BlockDiv
    | BlockRim


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

        |.| Notices
            |-| backgroundColor (hex "333")
            |-| color (hex "FFF")
            |-| textAlign "center"
            |-| paddingTop 10 px
            |-| paddingBottom 10 px
            |-| fontWeight "bold"

---------------------------------------------------------------------------------------------------------

        |.| HomeContainer

        |.| HomeIntroImageBorder
            |-| padding 5 px
            |-| margin 10 px 
            |-| backgroundColor colorContentBackground

        |.| HomeIntroImage
            |-| height 300 px
            |-| backgroundColor (hex "454545")

        |.| HomeMainBodyPre
            |-| paddingTop 10 px

        |.| HomeMainBody
            |-| padding 30 px
            |-| paddingTop 50 px
            |-| backgroundColor colorContentBackground

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

---------------------------------------------------------------------------------------------------------

        |.| WritingContainer
            |-| backgroundColor colorContentBackground
            |-| marginTop 20 px

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
            |-| padding postPadding px
            --|-| paddingLeft postPadding px
            --|-| paddingRight postPadding px
            --|-| paddingBottom postPadding px
            
---------------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------------

        |.| ProgrammingContainer
            |-| marginTop 50 px

        |.| ProgrammingHeader
            |-| backgroundColor colorHighlight
            |-| paddingTop 20 px
            |-| paddingBottom 30 px

----------------------------------------------------------------------------------------------------------------

        |.| BootstrapAccordion 
            |-| color colorStandardText

---------------------------------------------------------------------------------------------------------

        |.| Footer
            |-| backgroundColor colorHighlight
            |-| height 60 px
            |-| marginTop 40 px

---------------------------------------------------------------------------------------------------------

        |.| Block
            |-| height 80 px
            |-| backgroundColor colorHighlight

        |.| BlockRim
            |-| padding 5 px
            |-| backgroundColor colorContentBackground

        |.| BlockDiv
            |-| marginTop 10 px

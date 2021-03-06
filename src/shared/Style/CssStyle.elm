module Style.CssStyle (css) where

import Css exposing (..)
import Css.Elements exposing (..)
import Style.SharedStyles exposing (..)
import Style.SharedValues exposing (..)


css : Stylesheet
css =
  stylesheet
    [ body
        [ marginTop (px 0)
        , color colorHeading
        , backgroundColor colorBodyBackground
        , fontFamilies ["Verdana", "Bitstream Vera Sans", .value sansSerif]
        , fontSize (px 14)
        ]
    , a
        [ color colorA
        , hover
            [ textDecoration none
            , color colorBlack
             ]
        ]
    , hr
        [ borderColor (hex "808080")
        ]
    , ((.) NavBar)
        [ backgroundColor colorNavBarBackground
        , color colorHighlight
        , marginBottom (px 0)
        ]
    , ((.) NavBarTop)
        [ backgroundColor colorHighlight 
        , height (px heightNavBarTop)
        ]
    , ((.) NavBarSpace)
        [ height (px heightNavBar)
        , backgroundColor colorHighlight
        ]
    , ((.) NavBarIconBar)
        [ backgroundColor colorHighlight
        ]
    , ((.) Notices)
        [ backgroundColor (hex "333")
        , color (hex "FFF")
        , textAlign center
        , paddingTop (px 10)
        , paddingBottom (px 10)
        , fontWeight bold
        ]
    , ((.) Markdown)
        [ paddingTop (px 40)
        , paddingBottom (px 40)
        ]
    , ((.) NoticesNoText)
        [ height (px 20)
        ]
    , ((.) HomeContainer)
        [ paddingTop (px 120)
        ]
    , ((.) HomeIntroImageBorder)
        [ padding (px 5)
        , margin (px 10) 
        , backgroundColor colorContentBackground
        ]
    , ((.) HomeIntroImage)
        [ height (px 300)
        , backgroundColor (hex "454545")
        ]
    , ((.) HomeMainBodyPre)
        [ paddingTop (px 10)
        ]
    , ((.) HomeMainBody)
        [ padding (px 30)
        , paddingTop (px 50)
        , backgroundColor colorContentBackground
        ]
    , ((.) Header)
        [ backgroundColor colorHighlight
        , paddingTop (px 20)
        , paddingBottom (px 30)
        ]
    , ((.) HeaderTitle)
        [ marginTop (px 50)
        , marginBottom (px 0)
        , fontSize (px 60)
        --, fontWeight normal
        ]
    , ((.) HeaderDesc)
        [ fontSize (px 20)
        , color colorSubHeading
        ]
    , ((.) HomePaddedContainer)
        [ margin (px 10)
        ]
    , ((.) WritingPost)
        [ padding (px postPadding)
        ]
    , ((.) TeachingBioAndCallToAction)
        [ paddingTop (px 20)
        , paddingBottom (px 20)
        ]
    , ((.) TeachingImgTakafumi)
        [ marginTop (px 40)
        , marginBottom (px 40)
        ]
    , ((.) TeachingCallToAction)
        [ marginTop (px 20)
        ]
    , ((.) TeachingContainerHeader)
        [ borderBottomColor colorHighlight
        ]
    , ((.) TeachingHeader)
        [ backgroundColor colorHighlight
        , marginBottom (px 20)
        ]
    , ((.) TeachingHeaderInner) 
        [ textShadow3 (px 1) (px 1) (hex "111")
        , textAlign center
        , marginBottom (px marginHeader)
        , marginTop (px marginHeader)
        ]
    , ((.) TeachingHeaderTitle)  
        [ marginTop (px 0)
        , marginBottom (px 0)
        , fontSize (px sizeHeaderTitleText)
        --, fontWeight normal
        ]
    , ((.) TeachingHeaderDesc)
        [ fontSize (px sizeHeaderDescText)
        , color (hex "6793B6")
        ]
    , ((.) TeachingArrow)
        [ borderStyle solid
        , borderColor transparent
        , borderTopColor colorHighlight
        , borderTopWidth (px 22)
        , borderRightWidth (px 28)
        , borderBottomWidth (px 0)
        , borderLeftWidth (px 28)
        , left (px 0)
        , right (px 0)
        --, content ""
        , margin auto
        , width (px 0)
        , position absolute
        ]
    , ((.) TeachingStrengths)
        [ marginTop (px 20)
        , marginBottom (px 20)
        ]
    , ((.) TeachingAdvertiseTitle)
        [ fontWeight bold
        , textAlign center
        ]
    , ((.) TeachingAdvertiseContent)
        [ color (hex "78909C")
        , textAlign center
        ]
    , ((.) ProgrammingContainer)
        [ marginTop (px 50)
        ]
    , ((.) BootstrapAccordion)
        [ color colorStandardText
        ]
    , ((#) Footer)
        [ backgroundColor colorHighlight
        --, height (px 60)
        ]
    , ((.) Block)
        [ height (px 80)
        , backgroundColor colorBlack
        ]
    , ((.) BlockRim)
        [ padding (px 5)
        , backgroundColor colorContentBackground
        ]
    , ((.) BlockDiv)
        [ marginTop (px 10)
        ]
    , ((.) Icon)
        [ height (px 40)
        , width (px 40)
        ]
    ]

    --, ((.) ProgrammingHeader)
    --    [ backgroundColor colorHighlight
    --    , paddingTop (px 20)
    --    , paddingBottom (px 30)
    --    ]

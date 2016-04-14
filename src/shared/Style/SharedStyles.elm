module Style.SharedStyles where

--import Html.CssHelpers exposing (namespace)

type CssClasses 
    = NavBar
    | NavBarTop
    | NavBarSpace
    | NavBarIconBar

    | Notices
    | NoticesNoText

    | Markdown
    
    | BootstrapAccordion
    
    | Header
    | HeaderInner
    | HeaderTitle
    | HeaderDesc

    | HomeContainer
    | HomeIntroImage
    | HomeIntroImageBorder
    | HomePaddedContainer
    | HomeMainBodyPre
    | HomeMainBody
    | HomeExtraSpace

    --| WritingHeader
    --| WritingHeaderInner
    --| WritingHeaderTitle
    --| WritingHeaderDesc
    | WritingPost
    | WritingExtraSpace

    | TeachingHeader
    | TeachingHeaderInner
    | TeachingHeaderTitle
    | TeachingHeaderDesc
    | TeachingContainerHeader
    | TeachingBioAndCallToAction
    | TeachingImgTakafumi
    | TeachingCallToAction
    | TeachingImgArea
    | TeachingArrow
    | TeachingAdvertiseTitle
    | TeachingAdvertiseContent
    | TeachingStrengths

    | ProgrammingContainer
    | ProgrammingHeader

    | Block
    | BlockDiv
    | BlockRim

    | Icon

type CssIds
    = Footer

--mainNamespace =
--  namespace "main"

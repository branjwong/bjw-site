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

    --| TeachingHeader
    --| TeachingHeaderInner
    --| TeachingHeaderTitle
    --| TeachingHeaderDesc
    | TeachingBioAndCallToAction
    | TeachingImgTakafumi
    | TeachingCallToAction
    | TeachingContainerHeader
    | TeachingImgArea
    | TeachingArrow
    | TeachingAdvertiseTitle
    | TeachingAdvertiseContent

    | ProgrammingContainer
    | ProgrammingHeader

    | Block
    | BlockDiv
    | BlockRim

type CssIds
    = Footer

--mainNamespace =
--  namespace "main"

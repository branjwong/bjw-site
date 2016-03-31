module TutorPlug where

import Teaching.PlugHelper

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Markdown
import Bootstrap
import Notices
import Header
import Footer



port title: String
port title = "Teaching" ++ " | BJW"


type alias Model =
  { currentPage : String
  }


main : Html
main =
  div
    []
    [ NavBar.navBar "Teaching"
    , NavBar.navBarSpace
    , header 
        "Teaching" 
        "The Classroom" 
        "Don't hesitate. I'm here to educate."
    , teachingContainer
    , Footer.footer
    ]


----------------------------------------------------------------------------------------------------------------


links : List Html
links =
  [ li [] [ a [ href "#Landing" ] [ text "Landing" ] ]
  , li [] [ a [ href "#Bio" ] [ text "Bio" ] ]
  , li [] [ a [ href "#Subjects" ] [ text "Subjects" ] ]
  , li [] [ a [ href "#Region" ] [ text "Region" ] ]
  , li [] [ a [ href "#" ] [ text "Reviews" ] ]
  , li [] [ a [ href "#Contact Me" ] [ text "Contact Me" ] ]
  ]
  

----------------------------------------------------------------------------------------------------------------

header : String -> String -> String -> Html
header pageName headText subText =
  div 
    [ class "row" ]
    [ div 
      [ class "col-sm-12" ]
      [ div
        [ class (pageName ++ "Header") ]
        [ div 
          [ class "container" ]
          [ div
            [ class (pageName ++ "HeaderInner") ]
            [ h1 [ class (pageName ++ "HeaderTitle") ] [ text headText ]
            , p [ class ("lead " ++ pageName ++ "HeaderDesc") ] [ text subText ]
            --, callToAction
            ]
          ]
        ]
      ]
    ]


callToAction : Html
callToAction =
  button
    [ class "TeachingCallToAction"
    , class "btn btn-lg btn-primary"
    , type' "button"
    , href "#ContactMe"
    ]
    [ text "Contact Me!" ]



----------------------------------------------------------------------------------------------------------------


teachingContainer : Html
teachingContainer =
  div
    [ class "container TeachingContainer" ]
    [ bioDiv
    , advertise
    --, imgTakafumi
    , subjects
    , area
    , contactMe
    ]


----------------------------------------------------------------------------------------------------------------


arrow color =
  let
    addedColor =
      style
        [ ("border-top-color", color) ]
  in
    div
      [ class "row" ]
      [ div
        [ class "col-sm-12" ]
        [ div 
          [ class "TeachingArrow"
          , addedColor
          ]
          []
        ]
      ]


----------------------------------------------------------------------------------------------------------------


bioDiv : Html
bioDiv =
  div
    [ class "row TeachingBioAndCallToAction"
    , id "Bio"
    ]
    [ bioAccordion
    ]


bioAccordion : Html
bioAccordion =
  let
    acName = "bio"
    class = "col-sm-12"
  in
    Bootstrap.accordion acName class
      [ Bootstrap.panelHeading acName 1 (.title Teaching.PlugHelper.bio1)
      , Bootstrap.panelBody acName 1 False (.html Teaching.PlugHelper.bio1)
      , Bootstrap.panelHeading acName 2 (.title Teaching.PlugHelper.bio2)
      , Bootstrap.panelBody acName 2 False (.html Teaching.PlugHelper.bio2)
      ]



----------------------------------------------------------------------------------------------------------------

advertise : Html
advertise =
  div 
    [ class "row" ]
    [ div
      [ class "col-sm-4" ]
      [ p [ class "TeachingAdvertiseTitle" ] [ text (.title Teaching.PlugHelper.foundations) ]
      , p [ class "TeachingAdvertiseContent" ] [ text (.content Teaching.PlugHelper.foundations) ]
      ]
    , div
      [ class "col-sm-4" ]
      [ p [ class "TeachingAdvertiseTitle" ] [ text (.title Teaching.PlugHelper.approaches) ]
      , p [ class "TeachingAdvertiseContent" ] [ text (.content Teaching.PlugHelper.approaches) ]
      ]
    , div
      [ class "col-sm-4" ]
      [ p [ class "TeachingAdvertiseTitle" ] [ text (.title Teaching.PlugHelper.personable) ]
      , p [ class "TeachingAdvertiseContent" ] [ text (.content Teaching.PlugHelper.personable) ]
      ]
    ]


----------------------------------------------------------------------------------------------------------------

subjects : Html
subjects = 
  div []
  [ Bootstrap.pageHeader "TeachingContainerHeader" "Subjects Offered" 
  , div
    [ class "row"
    , id "Subjects"
    ]
    [ subjectsAccordion ]
  ]


subjectsAccordion : Html
subjectsAccordion = 
  Bootstrap.accordion "subj" "col-sm-12"
    [ Bootstrap.panelHeading "subj" 1 (.title Teaching.PlugHelper.math10)
    , Bootstrap.panelBody "subj" 1 False (subjectPanelHtml Teaching.PlugHelper.math10)
    , Bootstrap.panelHeading "subj" 2 (.title Teaching.PlugHelper.math11)
    , Bootstrap.panelBody "subj" 2 False (subjectPanelHtml Teaching.PlugHelper.math11)
    , Bootstrap.panelHeading "subj" 3 (.title Teaching.PlugHelper.precalc11)
    , Bootstrap.panelBody "subj" 3 False (subjectPanelHtml Teaching.PlugHelper.precalc11)
    , Bootstrap.panelHeading "subj" 4 (.title Teaching.PlugHelper.precalc12)
    , Bootstrap.panelBody "subj" 4 False (subjectPanelHtml Teaching.PlugHelper.precalc12)
    , Bootstrap.panelHeading "subj" 5 (.title Teaching.PlugHelper.phys11)
    , Bootstrap.panelBody "subj" 5 False (subjectPanelHtml Teaching.PlugHelper.phys11)
    , Bootstrap.panelHeading "subj" 6 (.title Teaching.PlugHelper.phys12)
    , Bootstrap.panelBody "subj" 6 False (subjectPanelHtml Teaching.PlugHelper.phys12)
    , Bootstrap.panelHeading "subj" 7 (.title Teaching.PlugHelper.japanese)
    , Bootstrap.panelBody "subj" 7 False (subjectPanelHtml Teaching.PlugHelper.japanese)
    ]

subjectPanelHtml : Teaching.PlugHelper.Subject -> Html
subjectPanelHtml subject =
  div []
    [ p [] [ a [ href subject.link ] [ text "Expected Learning Outcomes" ] ]
    --, p [] [ text ("Relevant Experience: " ++ subject.experience) ]
    --, p [] [ text ("Base Cost: " ++ (toString subject.cost) ++ "per hour.") ]
    ]


----------------------------------------------------------------------------------------------------------------

area : Html
area = 
  let 
    imgArea = Bootstrap.image  ("/resources/pages/teaching/metrovan.fw.png")
    string = """

**Neighborhoods**
- Marpole
- Kerrisdale
- Oakridge
- Shaughnessy
- Arbutus
- Dunbar
- Kitsilano

    """

  in
    div 
      [ id "Location" ]
      [ Bootstrap.pageHeader "TeachingContainerHeader" "Location"
      , div
        [ class "row" ]
        [ div 
          [ class "col-sm-6" ]
          [ div 
            [ class "TeachingImgArea" ]
            [ imgArea ]
          ]
        , div
          [ class "col-sm-6" ]
          [ div 
            []
            [ Markdown.toHtml string
            ]
          ]
        ]
      ]

----------------------------------------------------------------------------------------------------------------

contactMe : Html
contactMe =
  div
    [ id "Contact Me" ]
    [ Bootstrap.pageHeader "TeachingContainerHeader" (.title Teaching.PlugHelper.contactAdv)
    , div
      [ class "row" ]
      [ div 
        [ class "col-sm-12" ]
        [ Markdown.toHtml (.content Teaching.PlugHelper.contactAdv) ]
      ]
    ]


----------------------------------------------------------------------------------------------------------------
-- UNUSED
----------------------------------------------------------------------------------------------------------------


imgTakafumi : Html
imgTakafumi = 
  div 
    [ class "TeachingImgTakafumi" ]
    [ Bootstrap.image ("takafumi.jpg") ]
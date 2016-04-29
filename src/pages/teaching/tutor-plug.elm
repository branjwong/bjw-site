module TutorPlug where

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
    [ NavBar.navBar
    , NavBar.navBarSpace
    , header 
        "Teaching" 
        "The Classroom" 
        "Don't hesitate. I'm here to educate."
    , teachingContainer
    , Footer.footer
    ]


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

{-
callToAction : Html
callToAction =
  button
    [ class "TeachingCallToAction"
    , class "btn btn-lg btn-primary"
    , type' "button"
    , href "#ContactMe"
    ]
    [ text "Contact Me!" ]
-}

teachingContainer : Html
teachingContainer =
  div
    [ class "container TeachingContainer" ]
    [ strengths
    , bioAccordion
    , subjects
    , area
    , contactMe
    ]

{-
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
-}

bioAccordion : Html
bioAccordion =
  let
    acName = "bio"
    myClass = "col-sm-12"
  in
    div
      [ class "row TeachingBioAndCallToAction"
      , id "Bio"
      ]
      [ Bootstrap.accordion acName myClass
        [ Bootstrap.panelHeading acName 1 (.title bio1)
        , Bootstrap.panelBody acName 1 False (.html bio1)
        , Bootstrap.panelHeading acName 2 (.title bio2)
        , Bootstrap.panelBody acName 2 False (.html bio2)
        , Bootstrap.panelHeading acName 3 (.title bio3)
        , Bootstrap.panelBody acName 3 False (.html bio3)
        ]
      ]


strengths : Html
strengths =
  div 
    [ class "row" ]
    [ div
      [ class "TeachingStrengths" ]
      [ div
        [ class "col-sm-4" ]
        [ p [ class "TeachingAdvertiseTitle" ] [ text (.title foundations) ]
        , p [ class "TeachingAdvertiseContent" ] [ text (.content foundations) ]
        ]
      , div
        [ class "col-sm-4" ]
        [ p [ class "TeachingAdvertiseTitle" ] [ text (.title approaches) ]
        , p [ class "TeachingAdvertiseContent" ] [ text (.content approaches) ]
        ]
      , div
        [ class "col-sm-4" ]
        [ p [ class "TeachingAdvertiseTitle" ] [ text (.title personable) ]
        , p [ class "TeachingAdvertiseContent" ] [ text (.content personable) ]
        ]
      ]
    ]


subjects : Html
subjects = 
  let
    subjectsText = 
      Markdown.toHtml """

[Foundations of Mathematics and Pre-calculus 10](/math10)  
[Foundations of Mathematics 11](/math11)  
[Pre-calculus 11](/precalc11)  
[Pre-calculus 12](/precalc12)  
[Physics 11](/phys11)  
[Physics 12](/phys12)  
[Japanese](/japanese)
    
    """

  in
  div []
  [ Bootstrap.pageHeader "TeachingContainerHeader" "Subjects Offered" 
  , div
    [ class "row", id "Subjects" ]
    [ div
      [ class "panel panel-default" ]
      [ div
        [ class "panel-body" ]
        [ subjectsText ]
      ] 
    ]
  ]


area : Html
area = 
  let 
    imgArea = Bootstrap.image  ("/resources/pages/teaching/metrovan.fw.png")
    string = Markdown.toHtml """

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
            [ class "row", id "Subjects" ]
            [ div
              [ class "panel panel-default" ]
              [ div
                [ class "panel-body" ]
                [ string ]
              ] 
            ]
          ]
        ]
      ]

contactMe : Html
contactMe =
  div
    [ id "Contact Me" ]
    [ Bootstrap.pageHeader "TeachingContainerHeader" (.title contactAdv)
    , div
      [ class "row" ]
      [ div 
        [ class "col-sm-12" ]
        [ div
          [ style [ ("margin-bottom" , "20px" ) ] ]
          [ Markdown.toHtml (.content contactAdv) ]
        ]
      ]
    ]

type alias AdvPoint =
  { title           : String
  , image           : String
  , content         : String
  }

type alias Panel =
  { title           : String
  , html            : Html
  }

bio1 : Panel
bio1 =
  let
    string = """

Brandon is currently a 5th year Simon Fraser University on the path of completing a joint major in both Computing Science and Business. Having recently completed a year of studying abroad in Japan, and he aims to continue his learning of the Japanese language, and to develop his technical skill set through the hackathons that he has began to take part in, and personal projects that he has recently started. While still pushing towards his other career goals, he wishes to keep teaching as a pivotal part of his life. Once finished with schooling, and after acquiring some experience, he aspires to develop web applications that enrich the aspects of life he is most fond of.

      """  

  in  
    { title = "Personal Profile"
    , html = Markdown.toHtml string
    }


bio2 : Panel
bio2 = 
  { title = "Experience"
  , html = resume
  }

bio3 : Panel
bio3 =
  { title = "Pricing from $25/session!"
  , html = Markdown.toHtml """

4+ sessions/wk -> $25/session  
3  sessions/wk -> $30/session  
2  sessions/wk -> $35/session  
   irregular   -> $40/session  

* if classes are to take place outside of my home, there will be additional cost for travel  
* home is located near the corner of West 65th Avenue and Granville St.

  """
  }


foundations : AdvPoint
foundations = 
  { title = "Builds Foundations"
  , image = ""
  , content = "I make sure to assess and teach what students are missing so that they can return better prepared to the concepts at hand."
  -- It's nigh impossible for students to tackle concepts that they are currently learning if they have holes in their understanding of previously learned material.
  }


approaches : AdvPoint
approaches = 
  { title = "Approaches from all Angles"
  , image = ""
  , content = "Not all students learn the same way. I make sure that students understand all aspects of concept so that it can be approached confidently."
  --  Some students prefer visual cues, learning by example, conceptual definition, practical applications, learning abstractly or through concrete examples.
  }

personable : AdvPoint
personable =
  { title = "Personable"
  , image = ""
  , content = "I am able to relate to students of all age groups. I am diverse in interests, so I can always ensure that I can connect to my students on some level."
  -- I have travelled, I ski, I play soccer, I program, I game, ... and the list goes on.
  }


contactAdv : AdvPoint
contactAdv =
  { title = "Contact Me"
  , image = ""
  , content =
      """

Name: Brandon J Wong  
Phone: 778-996-1593  
Email: <bjwteaching@gmail.com>

      """
  }


resume =
  div []
    [ div []
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-9" ]
          [ text "Oxford Learning" ]
        , div
          [ class "col-sm-3" ]
          [ text "Aug 2014 – Apr 2016" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ text "Tutor for Grade 10-12: Math, Physics, Chemistry, and K-12 English" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ Markdown.toHtml oxfordText ]
        ]
      ]
    , div []
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-9" ]
          [ text "Magee Secondary School" ]
        , div
          [ class "col-sm-3" ]
          [ text "Feb 2013 – Jul 2013" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ text "Calculus Tutor" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ Markdown.toHtml mageeText ]
        ]
      ]
    ]
    
oxfordText = """  
- Develop appropriate curricula to supplement what students are currently learning at school
- Train students to understanding the underlying concepts before trying to apply the mechanics
- Communicate effectively with other teachers and education directors in order to be able to solve problems rationally and efficiently
"""
    
mageeText = """
- Dug deep to find out the root cause of the difficulties his students were having.
- Challenged the students who were succeeding.
"""



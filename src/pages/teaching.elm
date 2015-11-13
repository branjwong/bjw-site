module Teaching where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Style
import Markdown
import Bootstrap


port title: String
port title =  "Teaching · BJW"


type alias Model =
  { currentPage : String
  }


type alias AdvPoint =
  { title       : String
  , image       : String
  , content     : String
  }

type alias Panel =
  { title       : String
  , content     : Html
  }



main : Html
main =
  view model


model : Model
model =
  { currentPage = "Teaching"
  }


view : Model -> Html
view model =
  div
    [ -- attribute "role" "elm-app"
    ]
    [ NavBar.navBar model.currentPage links
    , teaching
    --, subjectContainer
    ]


links : List Html
links =
  [ li [] [ a [ href "#" ] [ text "Landing" ] ]
  , li [] [ a [ href "#" ] [ text "Bio" ] ]
  , li [] [ a [ href "#" ] [ text "Teachables" ] ]
  , li [] [ a [ href "#" ] [ text "Region" ] ]
  , li [] [ a [ href "#" ] [ text "Reviews" ] ]
  , li [] [ a [ href "#" ] [ text "Contact Me" ] ]
  ]


teaching : Html
teaching =
  div
    [ class "container"
    , Style.teachingContainer
    ]
    [ header
    , takafumiImg
    , bioAndCallToAction
    , advertise
    , subjects
    ]


header : Html
header =
  div
    [ class "col-mid-12", Style.writingHeader ]
    [ h1 [ Style.writingTitle ] [ text "The Classroom" ]
    , p [ class "lead", Style.writingDescription ] [ text "I am an educator, and a damn good one at that." ]
    ]


takafumiImg : Html
takafumiImg =
  div
    [ class "row" ]
    [ div
      [ class "col-md-12"
      , Style.teachingTakafumiImg
      ]
      [ img
        [ src "../../resources/takafumi_1170x658.jpg"
        , class "img-responsive"
        ]
        []
      ]
    ]


bioAndCallToAction : Html
bioAndCallToAction =
  div
    [ class "row" ]
    [ bioAccordion
    , callToAction
    ]


bioAccordion : Html
bioAccordion =
  let
    acName = "bio"
    class = "col-md-10"
  in
    Bootstrap.accordion acName class
      [ Bootstrap.panelHeading acName 1 bio1.title
      , Bootstrap.panelBody acName 1 bio1.content
      , Bootstrap.panelHeading acName 2 bio2.title
      , Bootstrap.panelBody acName 2 bio2.content
      ]


callToAction : Html
callToAction =
  div 
    [ class "col-md-2" ] 
    [ p []
      [ button
        [ Style.teachingCallToAction
        , class "btn btn-lg btn-primary"
        , type' "button"
        ]
        [ text "Contact Me!" ]
      ]
    ]


bio1 : Panel
bio1 =
  let
    string =
      """
  Brandon is currently a 5th year Simon Fraser University on the path of completing a joint major in both Computing Science and Business. Having recently completed a year of studying abroad in Japan, and he aims to continue his learning of the Japanese language, and to develop his technical skill set through the hackathons that he has began to take part in, and personal projects that he has recently started. While still pushing towards his other career goals, he wishes to keep teaching as a pivotal part of his life. Once finished with schooling, and after acquiring some experience, he aspires to develop web applications that enrich the aspects of life he is most fond of.
      """  
  in  
    { title = "Personal Profile"
    , content = Markdown.toHtml string
    }
 
bio2 : Panel
bio2 = 
  let
    resume = 
      div
        []
        [ oxford
        , magee
        ]
    oxford = 
      div []
        [ div
          [ class "row" ]
          [ div
            [ class "col-md-9"
            --, Style.teachingResumeH1 
            ]
            [ text "Oxford Learning" ]
          , div
            [ class "col-md-3" 
            --, Style.teachingResumeH2 
            ]
            [ text "Aug 2014 – Present" ]
          ]
        , div
          [ class "row" ]
          [ div
            [ class "col-md-12"
            --, Style.teachingResumeH3 
            ]
            [ text "Tutor for Grade 10-12: Math, Physics, Chemistry, and K-12 English" ]
          ]
        , div
          [ class "row" ]
          [ div
            [ class "col-md-12" ]
            [ Markdown.toHtml oxfordText ]
          ]
        ]
    oxfordText =
      """  
  - Develop appropriate curricula to supplement what students are currently learning at school
  - Train students to understanding the underlying concepts before trying to apply the mechanics
  - Communicate effectively with other teachers and education directors in order to be able to solve problems rationally and efficiently
      """
    magee = 
      div []
        [ div
          [ class "row" ]
          [ div
            [ class "col-md-9"
            --, Style.teachingResumeH1 
            ]
            [ text "Magee Secondary School" ]
          , div
            [ class "col-md-3" 
            --, Style.teachingResumeH2 
            ]
            [ text "February 2013 – July 2013" ]
          ]
        , div
          [ class "row" ]
          [ div
            [ class "col-md-12"
            --, Style.teachingResumeH3 
            ]
            [ text "Calculus Tutor" ]
          ]
        , div
          [ class "row" ]
          [ div
            [ class "col-md-12" ]
            [ Markdown.toHtml mageeText ]
          ]
        ]
    mageeText =
      """
  - Dug deep to find out the root cause of the difficulties his students were having.
  - Challenged the students who were succeeding.
      """
  in
    { title = "Experience"
    , content = resume
    }

bio3 : Panel
bio3 =
  let 
    string =
      """
  - building FOUDNATIONS
  - APPROACHES from all ANGLES
    - pattern recognition
    - concept definition
  - don't test applications of concepts without learning the concepts before
  - physics 11: don't work on p/v/a/t graphs without learning p,v,a respectively
  - pragmatic

     """
  in
    { title = "Teaching Style"
    , content = Markdown.toHtml string
    }


advertise : Html
advertise =
  div 
    [ class "row" ]
    [ div
      [ class "col-md-6" ]
      [ Markdown.toHtml foundations.content ]
    , div
      [ class "col-md-6" ]
      [ Markdown.toHtml approaches.content ]
    ]


foundations : AdvPoint
foundations = 
  { title = "Building Foundations"
  , image = ""
  , content = "Finding"
  }


approaches : AdvPoint
approaches = 
  { title = "Approaching from all Angles"
  , image = ""
  , content = ""
  }




subjects : Html
subjects = 
  div []
  [ div 
    [ class "row" ]
    [ div 
      [ class "col-md-12" ]
      [ div 
        [ class "page-header" ]
        [ h1 [] [ text "Subjects Offered" ] ]
      ]
    ]
  , div
    [ class "row" ]
    [ subjectsAccordion ]
  ]


subjectsAccordion : Html
subjectsAccordion = 
  Bootstrap.accordion "subj" "col-md-12"
    [ Bootstrap.panelHeading "subj" 1 math10.title
    , Bootstrap.panelBody "subj" 1 math10.content
    , Bootstrap.panelHeading "subj" 2 math11.title
    , Bootstrap.panelBody "subj" 2 math11.content
    , Bootstrap.panelHeading "subj" 3 precalc11.title
    , Bootstrap.panelHeading "subj" 4 precalc12.title
    , Bootstrap.panelHeading "subj" 5 phys11.title
    , Bootstrap.panelHeading "subj" 6 phys12.title
    ]


math10 : Panel
math10 =
  let
    string = 
      """
  - Measurement
    - Unit conversion
    - Surface Area and Volume of common shapes
    - Primary Trigonometric Relations
  - Algebra and Number
    - Prime Factors, Greast Common Factor, Least Comon Multiple
    - Understanding Number Systems
      - Natural and Whole Numbers, Integers, Rational, Irrational, and Real Numbers
    - Powers with Integral and Rational Exponents
    - Polynomial Expressions
      - Expanding
      - Factoring
  - Relations and Functions
    - Relationships among data, graphs, and situations
    - Slope
    - Representation of linear relations using words, ordered pairs, tables of values, graphs, and equations
    - Characteristics of the graphs of linear relations including intercepts, slope, domain, and range.
    - Different forms of expressing linear relations
      - slope-intercept form
      - general form
      - slope-point form
    - Determining the equation of a linear relation given limited information
    - Function notation
    - Problem solving that are linear in nature graphically and algebraically
  - http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_foundations_precalc10.pdf
      """
  in
    { title = "Foundations of Mathematics and Pre-calculus 10" 
    , content = Markdown.toHtml string
    }
  

math11 : Panel
math11 =
  let
    string = 
      """
  - Measurement
    - Problems that involve the application of rates
    - Problems that involve scale diagrams, using proportional reasoning
  - Geometry
    - Relationships among scale factors, areas, surface areas, and volumes of similar 2D and 3D shapes
    - Proofs and problems that involve the properties of angles and triangles, the cosine law, and the sine law
  - Logical Reasoning
    - Analyze and prove conjectures, using inductive and deductive reasoning
    - Analyze puzzles and games that involve spatial reasoning, using problem-solving strategies
  - Statistics
    - Normal distributions, standard deviation, z-scores
    - Interpret statistical data using confidence intervals, confidence levels, and margins of error
  - Relations and Functions
      """
  in 
    { title = "Foundations of Mathematics 11"
    , content = Markdown.toHtml string
    }



precalc11 : Panel
precalc11 =
  let
    string = 
      """
      """
  in
    { title = ""
    , content = Markdown.toHtml string
    }


precalc12 : Panel
precalc12 =
  let
    string = 
      """
      """
  in
    { title = ""
    , content = Markdown.toHtml string
    }


phys11 : Panel
phys11 =
  let
    string = 
      """
      """
  in
    { title = ""
    , content = Markdown.toHtml string
    }

phys12 : Panel
phys12 =
  let
    string = 
      """
      """
  in
    { title = ""
    , content = Markdown.toHtml string
    }


layout : String
layout =
  """
  # Landing Page
  - introductory tagline
  - img = "teaching"
  - button -> contact me today! -> #contactme
  # Bio
  - img = "gradphoto"
  # Reviews
  # Map
  # Contact Me
  - anchor: #contactme
  """
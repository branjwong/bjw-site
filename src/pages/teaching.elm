module Teaching where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Style
import Markdown
import Bootstrap


port title: String
port title =  "Teaching · BJW"


main : Html
main =
  view model


type alias Model =
  { currentPage : String
  }


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
    ]


links =
  [ li [] [ a [ href "#" ] [ text "Landing" ] ]
  , li [] [ a [ href "#" ] [ text "Bio" ] ]
  , li [] [ a [ href "#" ] [ text "Teachables" ] ]
  , li [] [ a [ href "#" ] [ text "Region" ] ]
  , li [] [ a [ href "#" ] [ text "Reviews" ] ]
  , li [] [ a [ href "#" ] [ text "Contact Me" ] ]
  ]

teaching =
  div
    [ class "container"
    , Style.teachingContainer
    ]
    [ header
    , takafumiImg
    , bioAndCallToAction
    , subjects
    ]


header =
  div
    [ class "col-mid-12", Style.writingHeader ]
    [ h1 [ Style.writingTitle ] [ text "The Classroom" ]
    , p [ class "lead", Style.writingDescription ] [ text "I am an educator, and a damn good one at that." ]
    ]


takafumiImg =
  div
    [ class "row" ]
    [ div
      [ class "col-md-12"
      , Style.teachingTakafumiImg
      ]
      [ img
        [ src "../../resources/takafumi_720x405.jpg"
        , class "img-responsive"
        ]
        []
      ]
    ]


bioAndCallToAction =
  div
    [ class "row" ]
    [ bioAccordion
    , callToAction
    ]


bioAccordion =
  Bootstrap.accordion
    "col-md-10"
    [ Bootstrap.panelHeading "bio1" "Personal Profile" 
    , Bootstrap.panelBody "bio1" (text bioText)
    , Bootstrap.panelHeading "bio2" "Experience"
    , Bootstrap.panelBody "bio2" resume
    , Bootstrap.panelHeading "bio3" "Teaching Style" 
    , Bootstrap.panelBody "bio3" (Markdown.toHtml teachingStyleText)
    ]


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

{-
bioOld =
  let
    bioPicWidth = 1594
    bioPicHeight = 1978c
    bioScaleFactor = 10
  in
    div
      [ class "row"
      , Style.teachingBio
      ]
      [ div
        [ class "col-md-12" ]
        [ div
          [ class "media" ]
          [ div
            [ class "media-left" ]
            [ img
              [ class "media-object"
              , src "../../resources/gradphoto.jpg"
              , width (bioPicWidth//bioScaleFactor)
              , height (bioPicHeight//bioScaleFactor)
              ]
              []
            ]
          , div
            [ class "media-body" ]
            [ h1 [] [ text "Brandon J Wong" ]
            , h4 [] [ text "Age: 22" ]
            , Markdown.toHtml bioText
            , Markdown.toHtml experience
            ]
          ]
        ]
      ]
-}

bioText =
  """
  Brandon is currently a 5th year Simon Fraser University on the path of completing a joint major in both Computing Science and Business. Having recently completed a year of studying abroad in Japan, and he aims to continue his learning of the Japanese language, and to develop his technical skill set through the hackathons that he has began to take part in, and personal projects that he has recently started. While still pushing towards his other career goals, he wishes to keep teaching as a pivotal part of his life. Once finished with schooling, and after acquiring some experience, he aspires to develop web applications that enrich the aspects of life he is most fond of.
  """

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


teachingStyleText =
  """
  - building Foundations
  - don't test applications of concepts without learning the concepts before
  - physics 11: don't work on p/v/a/t graphs without learning p,v,a respectively
  - pragmatic
  """

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

subjectsAccordion = 
  Bootstrap.accordion
    "col-md-12"
    [ Bootstrap.panelHeading "subj1" "Foundations of Mathematics and Pre-calculus 10"
    , Bootstrap.panelBody "subj1" (Markdown.toHtml math10)
    , Bootstrap.panelHeading "subj2" "Foundations of Mathematics 11"
    , Bootstrap.panelBody "subj2" (Markdown.toHtml math11)
    ]


subjectsList : List String
subjectsList =
  [ math10
  , math11
  , precalc11
  , precalc12
  ]

math10 : String
math10 =
  -- Foundations of Mathematics and Pre-calculus 10
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

math11 : String
math11 =
  -- Foundations of Mathematics 11
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

precalc11 : String
precalc11 =
  """
  """

precalc12 : String
precalc12 =
  """
  """

phys11 : String
phys11 =
  """
  """

phys12 : String
phys12 =
  """
  """


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
-- Needs to be longer so that there is a scroll bar on the right.
-- http://getbootstrap.com/examples/carousel/
-- http://getbootstrap.com/javascript/#affix


module Teaching where

import Html exposing (..)
import Html.Attributes exposing (..)
import Exts.Html.Bootstrap exposing (..)

import TopBar exposing (..)
import Centre exposing (..)
import Style exposing (..)

import Markdown

main : Html
main =
  view model

-- VIEW

view : Model -> Html
view model =
  div [ attribute "role" "elm-app" ]
    [ TopBar.topBar model.currentPage links
    , TopBar.topBarPadding
    --, Body
    --, header
    , takafumiImg
    , bio
    , Markdown.toHtml experience
    --, List.map Markdown.toHtml subjects
    ]

-- MODEL

type alias Model =
  { currentPage : String
  }

model : Model
model =
  { currentPage = "Teaching"
  }

-- VIEW COMPONENTS

links =
  [ li [] [ a [ href "#" ] [ text "Landing" ] ]
  , li [] [ a [ href "#" ] [ text "Bio" ] ]
  , li [] [ a [ href "#" ] [ text "Teachables" ] ]
  , li [] [ a [ href "#" ] [ text "Region" ] ]
  , li [] [ a [ href "#" ] [ text "Reviews" ] ]
  , li [] [ a [ href "#" ] [ text "Contact Me" ] ]
  ]

landing =
  div [ class "container" ]
    [ jumbotron
    , takafumiImg
    ]


jumbotron =
  div [ class "jumbotron" ]
    [ h1 [] [ text "I actually teach." ]
    , p [] [ text "With me, the students of today are able to taught how to learn for tomorrow." ]
    ]


takafumiImg =
  img
    [ src "../../resources/takafumi_720x405.jpg"
    , class "img-responsive"
    ]
    []


bio =
  let
    bioPicWidth = 1594
    bioPicHeight = 1978
    bioScaleFactor = 10
  in
    div
      [ class "container", Style.bio ]
      [ div []
        [ div [ class "media" ]
          [ div [ class "media-left" ]
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
            , text bioText
            , text experience
            ]
          ]
        ]
      ]

bioText : String
bioText =

  """

  Brandon is currently a 5th year Simon Fraser University on the path of completing a joint major in both Computing Science and Business. Having recently completed a year of studying abroad in Japan, and he aims to continue his learning of the Japanese language, and to develop his technical skill set through the hackathons that he has began to take part in, and personal projects that he has recently started. While still pushing towards his other career goals, he wishes to keep teaching as a pivotal part of his life. Once finished with schooling, and after acquiring some experience, he aspires to develop web applications that enrich the aspects of life he is most fond of.

  """

experience : String
experience =

  """

  Oxford learning
  Aug 2014 – Present
  Tutor for Grade 10-12: Math, Physics, Chemistry, and K-12 English
  Develop appropriate curricula to supplement what students are currently learning at school
  Train students to understanding the underlying concepts before trying to apply the mechanics
  Communicate effectively with other teachers and education directors in order to be able to solve problems rationally and efficiently

  Magee Secondary School
  February 2013 – July 2013
  Calculus Tutor
  Dug deep to find out the root cause of the difficulties his students were having.
  Challenged the students who were succeeding.

  """

subjects : List String
subjects =
  [ math10
  , math11
  , precalc11
  , precalc12
  ]

math10 : String
math10 =

  """
  ### Foundations of Mathematics and Pre-calculus 10

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

  """

  ### Foundations of Mathematics 11

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



-- Old



--masthead_v3 =
--  div [ class "style-teaching-masthead" ]
--    [ h1 [] [ text "I teach the students of today how to learn for tomorrow." ]
--    , div [ class "button"]
--      [ button
--        [ type' "button"
--        , class "btn btn-info btn-lg"
--        , attribute "data-toggle" "modal"
--        , attribute "data-target" "#contact"
--        ]
--        [ text "Contact Me Now!" ]
--      ]
--    ]

--masthead_v2 =
--  header [ class "intro style-teaching-masthead-image" ]
--    [ div  [ class "intro-body" ]
--      [ div [ class "container"]
--        [ div [ class "splash" ]
--          [ h1 [] [ text "I teach the students of today how to learn for tomorrow." ]
--          , div [ class "button"]
--            [ button
--              [ type' "button"
--              , class "btn btn-info btn-lg"
--              , attribute "data-toggle" "modal"
--              , attribute "data-target" "#contact"
--              ]
--              [ text "Contact Me!" ]
--            ]
--          ]
--        ]
--      ]
--    ]

--masthead_v1 =
--  main'
--    [ class "style-teaching-masthead"
--    , attribute "role" "main"
--    , id "content" ]
--    [ div [ class "container" ]
--      [ p [ class "lead" ] [ text "I teach the students of today how to learn for tomorrow." ]
--      ]
--    ]

--banner =
--  div [ class "banner" ]
--    [ takafumi
--    , teachingHeader
--    ]
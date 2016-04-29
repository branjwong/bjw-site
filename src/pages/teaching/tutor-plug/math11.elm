module MathEleven where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"


tytle = "Foundations of Mathematics 11"


main : Html
main = 
 div
    [ ]
    [ NavBar.navBar
    , NavBar.navBarSpace
    , Header.header "Learning Outcomes" tytle 
    , subjectInfo
    , Footer.footer
    ]


subjectInfo : Html
subjectInfo =
  div
    [ class "container" ]
    [ div
      [ class "row" ]
      [ div 
        [ class "Markdown" ]
        [ body ]
      ]
    ]

-- http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_foundations11.pdf
body =
  Markdown.toHtml """

Measurement
- Problems that involve the application of rates
- Problems that involve scale diagrams, using proportional reasoning
- Relationships among scale factors, areas, surface areas, and volumes of similar 2D and 3D shapes

Geometry
- Proofs and problems that involve the properties of angles and triangles
- Proofs and problems that involve the properties of angles and triangles, the cosine law, and the sine law

Logical Reasoning
- Analyze and prove conjectures, using inductive and deductive reasoning
- Analyze puzzles and games that involve spatial reasoning, using problem-solving strategies

Statistics
- Normal distributions, standard deviation, z-scores
- Interpret statistical data using confidence intervals, confidence levels, and margins of error

Relations and Functions
- Model and solve problems that involve systems of linear inequalities in two variables
- Demonstrate an understanding of the characteristics of quadratic functions, including vertex, intercepts, domain and range, axis of symmetry

  """
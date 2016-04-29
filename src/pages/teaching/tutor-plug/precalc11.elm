module PrecalcEleven where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"


tytle = "Pre-calculus 11"


main : Html
main = 
 div
    []
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

body =
  Markdown.toHtml """

Trigonometry
- Demonstrate an understanding of angles in standard position, expressed in degrees and radians
- Develop and apply the equation of the unit circle
- Solve problems, using the six trigonometric ratios for angles expressed in radians and degrees
- Graph and analyse the trigonometric functions sine, cosine and tangent to solve problems
- Solve, algebraically and graphically, first and second degree trigonometric equations with the domain expressed in degrees and radians
- Prove trigonometric identities, using: 
  - reciprocal identities
  - quotient identities 
  - Pythagorean identities
  - sum or difference identities (restricted to sine, cosine and tangent) 
  - double-angle identities (restricted to sine, cosine and tangent)

Relations and Functions
- Demonstrate an understanding of operations on, and compositions of, functions
- Demonstrate an understanding of the effects of horizontal and vertical translations on the graphs of functions and their related equations
- Demonstrate an understanding of the effects of horizontal and vertical stretches on the graphs of functions and their related equations
- Apply translations and stretches to the graphs and equations of functions
- Demonstrate an understanding of the effects of reflections on the graphs of functions and their related equations, including reflections through the: 
   - x-axis 
   - y-axis 
   - line y = x 
- Demonstrate an understanding of inverses of relations
- Demonstrate an understanding of logarithms
- Demonstrate an understanding of the product, quotient and power laws of logarithms
- Graph and analyse exponential and logarithmic functions
- Solve problems that involve exponential and logarithmic equations
- Demonstrate an understanding of factoring polynomials of degree greater than 2 (limited to polynomials of degree ≤ 5 with integral coefficients)
- Graph and analyse polynomial functions (limited to polynomial functions of degree 5)
- Graph and analyse radical functions (limited to functions involving one radical)
- Graph and analyse rational functions (limited to numerators and denominators that are monomials, binomials or trinomials)

Permutations, Combinations and Binomial Theorem 
- Apply the fundamental counting principle to solve problems
- Determine the number of permutations of n elements taken r at a time to solve problems
- Determine the number of combinations of n different elements taken r at a time to solve problems
- Expand powers of a binomial in a variety of ways, including using the binomial theorem (restricted to exponents that are natural numbers)

    """
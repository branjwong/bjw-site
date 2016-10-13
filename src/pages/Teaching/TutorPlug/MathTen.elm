module Teaching.TutorPlug.MathTen exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
import NavBar
import Header
import Footer


--

import Model exposing (Model, Msg)


title =
    "Foundations of Mathematics and Pre-calculus 10"


view : Model -> Html Msg
view model =
    div
        []
        [ NavBar.navBar
        , NavBar.navBarSpace
        , Header.header "Learning Outcomes" title
        , subjectInfo
        , Footer.footer
        ]


subjectInfo : Html Msg
subjectInfo =
    div
        [ class "container" ]
        [ div
            [ class "row" ]
            [ Markdown.toHtml
                [ class "Markdown" ]
                body
            ]
        ]



-- http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_foundations_precalc10.pdf


body =
    """

Measurement
- Unit conversion
- Surface Area and Volume of common shapes
- Primary Trigonometric Relations

Algebra and Number
- Prime Factors, Greast Common Factor, Least Comon Multiple
- Understanding Number Systems
  - Natural and Whole Numbers, Integers, Rational, Irrational, and Real Numbers
- Powers with Integral and Rational Exponents
- Polynomial Expressions
  - Expanding
  - Factoring

Relations and Functions
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

      """

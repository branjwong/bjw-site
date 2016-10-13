module Teaching.TutorPlug.PrecalcTwelve exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
import NavBar
import Header
import Footer


--

import Model exposing (Model, Msg)


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


title =
    "Pre-calculus 12"


body =
    """

Algebra and Number
- Demonstrate an understanding of the absolute value of real numbers
- Problems that involve operations on radicals and radical expressions with numerical and variable radicands.
- Problems that involve radical equations
- Determine equivalent forms of rational expressions
- Perform operations on rational expressions
- Solve problems that involve rational equations

Trigonometry
- Demonstrate an understanding of angles in standard position
- Solve problems, using the three primary trigonometric ratios for angles from 0° to 360° in standard position
- Solve problems, using the cosine law and sine law, including the ambiguous case

Relations and Functions
- Factor polynomial expressions
- Graph and analyse absolute value functions to solve problems
- Analyze quadratic functions and determine the vertex, domain and range, direction of opening, axis of symmetry, x- and y-intercepts
- Solve problems that involve quadratic equations
- Solve, algebraically and graphically, problems that involve systems of linear-quadratic and quadratic equations in two variables
- Solve problems that involve linear and quadratic inequalities in two variables
- Solve problems that involve quadratic inequalities in one variable
- Analyze arithmetic sequences and series to solve problems
- Analyze geometric sequences and series to solve problems
- Graph and analyse reciprocal functions (limited to the reciprocal of linear and quadratic functions)


      """

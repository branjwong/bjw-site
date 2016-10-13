module Teaching.TutorPlug.PhysicsEleven exposing (view)

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
    "Physics 11"


body =
    """

Skills, Methods, and the Nature of Physics
- Describe the nature of physics
- Apply the skills and methods of physics

Wave Motion and Geometrical Optics
- Analyse the behaviour of light and other waves under various conditions, with reference to the properties of waves and using the universal wave equation
- Use ray diagrams to analyse situations in which light reflects from plane and curved mirrors
- Analyse siutations in which light is refracted

Kinematics
- Apply knowledge of the relationships between time, displacement, distance, velocity, and speed to situations involving objects in one dimension
- Apply knowledge of the relationships between time, velocity, displacement, and acceleration to situations involving objects in one dimension

Forces
- Solve problems involving the force of gravity
- Analyse situations involving the force due to friction
- Apply Hooke's law to the deformation of materials

Newton's Laws
- Solve problems that involve the application of Newton's Laws of motion in one dimension
- Apply the concept of momentum in one dimension

Energy
- Perform calculations inolving work, force, and displacement
- Solve problems involving different forms of energy
- Analyse the relationships between work and energy, with reference to the law of convervation of energy
- Solve problems involving power and efficiency

Special Relativity
- Explain the fundamental principles of special relativity

Nuclear Fission and Fusion
- Analyse nuclear processes

  """

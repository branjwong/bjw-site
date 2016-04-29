module PhysTwelve where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

import NavBar
import Header
import Footer


port title : String
port title =
  tytle ++ " | BJW"


tytle = "Physics 12"


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

Experiments and Graphical Methods
- Conduct appropriate experiments
- Use graphical methods to analyse results of experiements

Vectors
- Perform vector analysis in one or two dimensions

Kinematics
- Apply vector analysis to solve practical navigation problems
- Apply the concepts of motion to various situations where acceleration is constant

Dynamics
- Apply Newton's laws of motion to solve problems involving acceleration, gravitational field strength, and friction
- Apply the concepts of dynamics to analyse one-dimensional or two-dimensional situations

Work, Energy, and Power
- Analyse the relationships work, energy, and power

Momentum
- Use knowledge of momentum and impulse to analyse situations in one dimension
- Use knowledge of momentum and impulse to analyse siutations in two dimension

Equilibrium
- Use knowledge of force, torque, and equilibrium to analyse various situations

Circular Motion
- Use knowledge of univorm circular motion to analyse various situations

Gravitation
- Analyse the gravitational attraction between masses

Electrostatics
- Apply Coulomb's law to analyse electric forces
- Analyse electric fields and their effects on charged objects
- Calculate electric potential energy and change in electric potential energy
- Apply the concept of electric potential to analyse situations involving point charges
- Apply the principles of electrostatics to a variety of situations

Electric Circuits
- Apply Ohm's law and Kirchhoff's laws to direct current circuits
- Relate efficiency to electric power, electric potential difference, current, and resistance

Electromagnetism
- Analyse electromagnetism, with reference to magnetic fields and their effects on moving charges
- Analyse the process of electromagnetic induction

  """
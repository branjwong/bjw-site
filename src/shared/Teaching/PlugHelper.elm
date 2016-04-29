module Teaching.PlugHelper where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown
import Bootstrap



type alias Subject = 
  { title           : String
  , learningOutcome : String
  , experience      : String
  , cost            : Int
  , link            : String
  }


--http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_precalc11.pdf
precalc11 : Subject
precalc11 =
  let
    
  in
    { title = "Pre-calculus 11"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/precalc11"
    }

precalc12 : Subject
precalc12 =
  let
    string = """

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

  in
    { title = "Pre-calculus 12"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/precalc12"
    }


phys11 : Subject
phys11 =
  let
    string = """

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

  in
    { title = "Physics 11"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/phys11"
    }


phys12 : Subject
phys12 =
  let
    string = """

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
  in
    { title = "Physics 12"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/phys12"
    }
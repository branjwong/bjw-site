module Teaching.PlugHelper where

import Teaching.Resume

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown
import Bootstrap

type alias AdvPoint =
  { title           : String
  , image           : String
  , content         : String
  }


type alias Panel =
  { title           : String
  , html            : Html
  }

type alias Subject = 
  { title           : String
  , learningOutcome : String
  , experience      : String
  , cost            : Int
  , link            : String
  }


bio1 : Panel
bio1 =
  let
    string = """

Brandon is currently a 5th year Simon Fraser University on the path of completing a joint major in both Computing Science and Business. Having recently completed a year of studying abroad in Japan, and he aims to continue his learning of the Japanese language, and to develop his technical skill set through the hackathons that he has began to take part in, and personal projects that he has recently started. While still pushing towards his other career goals, he wishes to keep teaching as a pivotal part of his life. Once finished with schooling, and after acquiring some experience, he aspires to develop web applications that enrich the aspects of life he is most fond of.

      """  

  in  
    { title = "Personal Profile"
    , html = Markdown.toHtml string
    }


bio2 : Panel
bio2 = 
  { title = "Experience"
  , html = Teaching.Resume.exports
  }


foundations : AdvPoint
foundations = 
  { title = "Builds Foundations"
  , image = ""
  , content = "I make sure to assess and teach what students are missing so that they can return better prepared to the concepts at hand."
  -- It's nigh impossible for students to tackle concepts that they are currently learning if they have holes in their understanding of previously learned material.
  }


approaches : AdvPoint
approaches = 
  { title = "Approaches from all Angles"
  , image = ""
  , content = "Not all students learn the same way. I make sure that students understand all aspects of concept so that it can be approached confidently."
  --  Some students prefer visual cues, learning by example, conceptual definition, practical applications, learning abstractly or through concrete examples.
  }

personable : AdvPoint
personable =
  { title = "Personable"
  , image = ""
  , content = "I am able to relate to students of all age groups. I am diverse in interests, so I can always ensure that I can connect to my students on some level."
  -- I have travelled, I ski, I play soccer, I program, I game, ... and the list goes on.
  }

-- http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_foundations_precalc10.pdf
math10 : Subject
math10 =
  let
    string = """

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

  in
    { title = "Foundations of Mathematics and Pre-calculus 10" 
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/dist/html/teaching/math10.html"
    }


-- http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_foundations11.pdf
math11 : Subject
math11 =
  let
    string = """

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

  in 
    { title = "Foundations of Mathematics 11"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/dist/html/teaching/math11.html"
    }


--http://www.bced.gov.bc.ca/irp/pdfs/mathematics/WNCPmath1012/2008math_precalc11.pdf
precalc11 : Subject
precalc11 =
  let
    string = """

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
  in
    { title = "Pre-calculus 11"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/dist/html/teaching/precalc11.html"
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
    , link = "/dist/html/teaching/precalc12.html"
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
    , link = "/dist/html/teaching/phys11.html"
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
    , link = "/dist/html/teaching/phys12.html"
    }

japanese : Subject
japanese =
  let
    string = """

As an former exchange of Kansai Gaidai University, I teach from the same curriculum and textbook that their professors developed. This textbook and curriculum has done so well that it has been adopted in classes all over the world. I have seen it with my own eyes being used in classrooms at Simon Fraser University.

http://genki.japantimes.co.jp/wp-content/uploads/genki_syllabus_en.jpg  
http://wpgenki.whitebase.co.jp/wp-content/uploads/06text_img1.jpg

"""

  in
    { title = "Japanese"
    , learningOutcome = string
    , experience = ""
    , cost = 0
    , link = "/dist/html/teaching/japanese.html"
    }


contactAdv : AdvPoint
contactAdv =
  { title = "Contact Me"
  , image = ""
  , content =
      """

Name: Brandon J Wong  
Phone: 778-996-1593  
Email: <bjwteaching@gmail.com>

      """
  }

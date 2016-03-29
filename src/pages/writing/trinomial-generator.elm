module TrinomialGenerator where

import StartApp.Simple as StartApp
import Html exposing (..)
import Html.Attributes exposing (class)
import Signal exposing (Address)
import Random exposing (Seed)
import Time exposing (Time, every)

import Header
import NavBar
import Footer

-- MODEL

type alias Model =
    { factored  : (Int, Int, Int, Int)
    , trinomial : (Int, Int, Int)
    , seed : Seed
    }

generateFactored : Model -> Model
generateFactored model =
  let
    generateInt min max seed = Random.generate (Random.int min max) seed
    (a, seed') = generateInt 0 10 model.seed
    (b, seed'') = generateInt -10 10 seed'
    (c, seed''') = generateInt 0 10 seed''
    (d, seed'''') = generateInt -10 10 seed'''
    fact = (a,b,c,d)
  in
    { model |
        factored = fact
      , trinomial = expand fact
      , seed = seed''''  
    }



expand : (Int, Int, Int, Int) -> (Int, Int, Int)
expand (a, b, c, d) =
    let
        a' = a*c
        b' = a*d + b*c
        c' = b*d
    in
        (a', b', c')

type DiscriminantResult 
    = NotFactorable
    | IntFactorable
    | RadFactorable

isSquare : Float -> Bool
isSquare n =
    if n == toFloat(truncate n) then
        True
    else
        False

discriminant : (Int, Int, Int) -> DiscriminantResult
discriminant (a, b, c) =
    let 
        -- Discriminant
        disc = b^2 - 4*a*c
        sqrtDisc = sqrt disc
    in
        if isNaN sqrtDisc then
            NotFactorable
        else if isSquare sqrtDisc then
            IntFactorable
        else
            RadFactorable

{-

````
(x + p)(x + q)  
= x(x + q) + p(x + q)   [1]
= x^2 + qx + px + pq    [2]
= x^2 + x(p + q) + pq   [3]
= x^2 + Bx + C          [4]
````

-}

init = 
  let 
    fact = (1,2,3,4)
  in
    { factored = fact
    , trinomial = expand fact
    , seed = Random.initialSeed 11
    }



-- UPDATE

type Action
    = NoOp
    | NewProblem

update : Action -> Model -> Model
update action model =
    case action of
        NoOp -> model
        NewProblem -> init


-- VIEW

port title : String
port title =
  "Trinomial Problem Generator" ++ " | BJW"

view : Address Action -> Model -> Html
view address model =
  div
    [ ]
    [ NavBar.navBar ""
    , NavBar.navBarSpace
    , Header.header "Default" "Trinomial Problem Generator" "Here's a new problem for you to try!"
    , page address model
    , Footer.footer
    ]


page : Address Action -> Model -> Html
page address model =
  div
    [ class "container ProgrammingContainer"
    ]
    [ div
      [ class "row" ]
      [ text (toString model)
      ]
    ]

-- SIGNALS

main : Signal Html
main =
  StartApp.start
    { model = generateFactored init
    , update = update
    , view = view
    }

currentTime : Signal Time
currentTime = every Time.second

module TrinomialGenerator where

import StartApp.Simple as StartApp
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)
import Signal exposing (Address, Mailbox)
import Random exposing (Seed)
import Time exposing (Time)

import Header
import NavBar
import Footer

-- MODEL

type Display 
  = Hidden
  | Shown

type alias Model =
  { factored  : (Int, Int, Int, Int)
  , trinomial : (Int, Int, Int)
  , seed : Seed
  , answer : Display
  }

generateFactoredAnswer : Seed -> Model
generateFactoredAnswer seed =
  let
    generateInt min max seed = Random.generate (Random.int min max) seed
    (a, seed') = generateInt 1 10 seed
    (b, seed'') = generateInt -10 10 seed'
    (c, seed''') = generateInt 1 10 seed''
    (d, seed'''') = generateInt -10 10 seed'''
    fact = (a,b,c,d)
  in
    { factored = fact
    , trinomial = expand fact
    , seed = seed''''
    , answer = Hidden  
    }

expand : (Int, Int, Int, Int) -> (Int, Int, Int)
expand (a, b, c, d) =
  let
    a' = a*c
    b' = a*d + b*c
    c' = b*d
  in
    (a', b', c')

{-
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
    if (isNaN sqrtDisc) then
      NotFactorable
    else if (isSquare sqrtDisc) then
      IntFactorable
    else
      RadFactorable

    --case (isNaN sqrtDisc, isSquare sqrtDisc) of
    --  (True, _)     -> NotFactorable
    --  (False, True) -> IntFactorable
    --  (_, _)        -> RadFactorable
-}

init = 
  let 
    fact = (1,2,3,4)
  in
    { factored = fact
    , trinomial = expand fact
    , seed = Random.initialSeed 0
    , answer = Hidden
    }
-- UPDATE

type Action
  = NoOp
  | New
  | Show
  --| Submit (Int, Int, Int, Int)

update : (Seed, Action) -> Model -> Model
update (seed, action) model =
  case action of
    NoOp -> model
    New -> generateFactoredAnswer seed
    Show -> { model | answer = Shown }
    --Submit (a,b,c,d) ->

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
  let
    (a',b',c') = model.trinomial
    (a, b, c) = (toString a', toString b', toString c')

    problem = 
      case (b'==0,c'==0) of
        (True, False) ->
          case c'<0 of
            True            -> "Factor " ++ a ++ "x^2" ++ b ++ "x"
            False           -> "Factor " ++ a ++ "x^2+" ++ b ++ "x"
        (False, True) ->  
          case b'<0 of
            True            -> "Factor " ++ a ++ "x^2" ++ b ++ "x"
            False           -> "Factor " ++ a ++ "x^2+" ++ b ++ "x"
        (_,_) ->
          case (b'<0, c'<0) of
            (True, True)    -> "Factor " ++ a ++ "x^2" ++ b ++ "x" ++ c
            (True, False)   -> "Factor " ++ a ++ "x^2" ++ b ++ "x+" ++ c
            (False, True)   -> "Factor " ++ a ++ "x^2+" ++ b ++ "x" ++ c
            (_, _)          -> "Factor " ++ a ++ "x^2+" ++ b ++ "x+" ++ c

    (p', q', r', s') = model.factored
    (p, q, r, s) = (toString p', toString q', toString r', toString s')
    answer = 
      case (q'<0, s'<0) of
        (True,True)   -> "(" ++ p ++ "x" ++ q ++ ")(" ++ r ++ "x" ++ s ++ ")"
        (True,False)  -> "(" ++ p ++ "x" ++ q ++ ")(" ++ r ++ "x+" ++ s ++ ")"
        (False,True)  -> "(" ++ p ++ "x+" ++ q ++ ")(" ++ r ++ "x" ++ s ++ ")"
        (_,_)         -> "(" ++ p ++ "x+" ++ q ++ ")(" ++ r ++ "x+" ++ s ++ ")"

    app = 
      case model.answer of
        Hidden ->
          div
            [ class "row" ]
            [ div
                []
                [ text problem ]
            , button
                [ onClick address New ]
                [ text "Get a New Problem!" ]
            , button
                [ onClick address Show ]
                [ text "Show Answer" ]
            ]
        Shown ->
            div
              [ class "row" ]
              [ div
                  []
                  [ text problem ]
              , button
                  [ onClick address New ]
                  [ text "Get a New Problem!" ]
              , div
                  []
                  [ text answer ]
              ]

  in
    div
    [ class "container ProgrammingContainer" ]
    [ app
    ]
  

-- SIGNALS

actions : Mailbox Action
actions =
  Signal.mailbox New

seeds : Signal Seed
seeds =
  Time.every Time.millisecond
  |> Signal.sampleOn actions.signal
  |> Signal.map Time.inMilliseconds
  |> Signal.map round
  |> Signal.map Random.initialSeed

updates : Signal (Seed, Action)
updates =
  Signal.map2 (,) seeds actions.signal

model : Signal Model
model =
  Signal.foldp update init updates

main : Signal Html
main =
  Signal.map (view actions.address) model   




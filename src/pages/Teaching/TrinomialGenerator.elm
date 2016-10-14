module Teaching.TrinomialGenerator exposing (..)

import Html.App as Html
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)
import Char
import Task
import Window exposing (Size)
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)
import Random exposing (Seed)


--

import Model exposing (..)
import Header
import NavBar
import Footer


init =
    let
        fact =
            ( 1, 2, 3, 4 )
    in
        { factored = fact
        , trinomial = expand fact
        , seed = Random.initialSeed 0
        , answer = Hidden
        }


generateProblemWithSeed : Seed -> Problem
generateProblemWithSeed seed =
    let
        generateInt min max seed =
            Random.step (Random.int min max) seed

        ( a, seed' ) =
            generateInt 1 10 seed

        ( b, seed'' ) =
            generateInt -10 10 seed'

        ( c, seed''' ) =
            generateInt 1 10 seed''

        ( d, seed'''' ) =
            generateInt -10 10 seed'''

        fact =
            ( a, b, c, d )
    in
        { factored = fact
        , trinomial = expand fact
        , seed = seed''''
        , answer = Hidden
        }


expand : ( Int, Int, Int, Int ) -> ( Int, Int, Int )
expand ( a, b, c, d ) =
    let
        a' =
            a * c

        b' =
            a * d + b * c

        c' =
            b * d
    in
        ( a', b', c' )



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
--Submit (a,b,c,d) ->


view : Model -> Html Msg
view model =
    case model.problem of
        Just problem ->
            div
                []
                [ NavBar.navBar
                , NavBar.navBarSpace
                , Header.header "Trinomial Problem Generator" "Here's a new problem for you to try!"
                , page problem
                  --, space model.size.height
                  --, Footer.footer
                ]

        Nothing ->
            text "No trinomial available!"


space : Int -> Html msg
space height =
    let
        heightContainer =
            45

        spaceTakenSoFar =
            heightNavBar
                + heightHeader
                + heightContainer
                + heightFooter

        result =
            if height - spaceTakenSoFar > 0 then
                height - spaceTakenSoFar + 1 - 50
            else
                0
    in
        div
            [ style [ ( "height", toString result ++ "px" ) ] ]
            []


type Params
    = Both
    | First
    | Second


page : Problem -> Html Msg
page problem =
    let
        ( a', b', c' ) =
            problem.trinomial

        abString n =
            toString (abs n)

        a =
            toString a' ++ "x²"

        ( b, c ) =
            case ( b' == 0, c' == 0 ) of
                ( True, False ) ->
                    case c' > 0 of
                        True ->
                            ( "", " + " ++ toString c' )

                        False ->
                            ( "", " - " ++ abString c' )

                ( False, True ) ->
                    case b' > 0 of
                        True ->
                            ( " + " ++ toString b' ++ "x", "" )

                        False ->
                            ( " - " ++ abString b' ++ "x", "" )

                ( _, _ ) ->
                    case ( b' > 0, c' > 0 ) of
                        ( True, True ) ->
                            ( " + " ++ toString b' ++ "x", " + " ++ toString c' )

                        ( True, False ) ->
                            ( " + " ++ toString b' ++ "x", " - " ++ abString c' )

                        ( False, True ) ->
                            ( " - " ++ abString b' ++ "x", " + " ++ toString c' )

                        ( False, False ) ->
                            ( " - " ++ abString b' ++ "x", " - " ++ abString c' )

        problemText =
            -- Factor: [Ax^2][ + Bx][ + C]
            "Factor: " ++ a ++ b ++ c

        ( p', q', r', s' ) =
            problem.factored

        answer =
            let
                p =
                    case p' of
                        1 ->
                            "x"

                        _ ->
                            toString p' ++ "x"

                r =
                    case p' of
                        1 ->
                            "x"

                        _ ->
                            toString r' ++ "x"

                --Check if ()' are necessary
                params =
                    case ( q' == 0, s' == 0 ) of
                        ( False, False ) ->
                            Both

                        ( False, True ) ->
                            First

                        ( True, False ) ->
                            Second

                        ( _, _ ) ->
                            Both

                -- Shouldn't happen
                ( pA, pB, pC, pD ) =
                    case params of
                        Both ->
                            ( "( ", " )", "( ", " )" )

                        First ->
                            ( "( ", " )", "", "" )

                        Second ->
                            ( "", "", "( ", " )" )

                ( q, s ) =
                    case ( q' == 0, s' == 0 ) of
                        ( True, False ) ->
                            case s' > 0 of
                                True ->
                                    ( "", " + " ++ toString s' )

                                False ->
                                    ( "", " - " ++ abString s' )

                        ( False, True ) ->
                            case q' > 0 of
                                True ->
                                    ( " + " ++ toString q', "" )

                                False ->
                                    ( " - " ++ abString q', "" )

                        ( _, _ ) ->
                            case ( q' > 0, s' > 0 ) of
                                ( True, True ) ->
                                    ( " + " ++ toString q', " + " ++ toString s' )

                                ( True, False ) ->
                                    ( " + " ++ toString q', " - " ++ abString s' )

                                ( False, True ) ->
                                    ( " - " ++ abString q', " + " ++ toString s' )

                                ( False, False ) ->
                                    ( " - " ++ abString q', " - " ++ abString s' )
            in
                -- Answer: x ( 3x + 4 )
                -- Answer: ( x + 2 ) ( 3x + 4 )
                -- Answer: [( ][Px][ + Q][ )] [( ][Rx][ + S][ )]
                "Answer : " ++ pA ++ p ++ q ++ pB ++ " " ++ pC ++ r ++ s ++ pD

        app =
            case problem.answer of
                Hidden ->
                    div
                        [ class "row" ]
                        [ div
                            []
                            [ text problemText ]
                        , button
                            [ onClick (WorksheetMsg New) ]
                            [ text "Get a New Problem!" ]
                        , button
                            [ onClick (WorksheetMsg Show) ]
                            [ text "Show Answer" ]
                        ]

                Shown ->
                    div
                        [ class "row" ]
                        [ div
                            []
                            [ text problemText ]
                        , button
                            [ onClick (WorksheetMsg New) ]
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

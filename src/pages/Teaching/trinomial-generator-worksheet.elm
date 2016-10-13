module TrinomialGeneratorWorksheet exposing (..)

import Html.App as Html
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)
import Random exposing (Seed)
import Time exposing (Time)
import Char
import Task
import Window exposing (Size)
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)


--

import Header
import NavBar
import Footer


main =
    Html.program
        { init =
            ( init
            , Cmd.batch
                [ Task.perform Tick Tick Time.now
                , Task.perform Resize Resize Window.size
                ]
            )
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }



-- MODEL


type alias Worksheet =
    { factored : ( Int, Int, Int, Int )
    , trinomial : ( Int, Int, Int )
    , seed : Seed
    , answer : Display
    , windowSize : Size
    }


init =
    let
        fact =
            ( 1, 2, 3, 4 )
    in
        { factored = fact
        , trinomial = expand fact
        , seed = Random.initialSeed 0
        , answer = Hidden
        , windowSize = Size 0 0
        }


type Display
    = Hidden
    | Shown


generateModelWithSeed : Seed -> Size -> Worksheet
generateModelWithSeed seed size =
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
        , windowSize = size
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
-- UPDATE


type Msg
    = New
    | Show
    | Tick Time
    | Resize Size


update : Msg -> Worksheet -> ( Model, Cmd Msg )
update msg model =
    case msg of
        New ->
            ( generateModelWithSeed model.seed model.windowSize, Cmd.none )

        Show ->
            ( { model | answer = Shown }, Cmd.none )

        Tick time ->
            ( generateModelWithSeed (Random.initialSeed (round time)) model.windowSize, Cmd.none )

        Resize size ->
            ( { model | windowSize = size }, Cmd.none )



--Submit (a,b,c,d) ->
-- VIEW
--port title : String
--port title =
--  "Trinomial Problem Generator" ++ " | BJW"


view : Worksheet -> Html Msg
view model =
    div
        []
        [ NavBar.navBar
        , NavBar.navBarSpace
        , Header.header "Trinomial Problem Generator" "Here's a new problem for you to try!"
        , page model
        , space model.windowSize.height
        , Footer.footer
        ]


space : Int -> Html msg
space height =
    let
        heightContainer =
            45

        spaceTakenSoFar =
            (Debug.log "heightNavBar" heightNavBar) + (Debug.log "heightHeader" heightHeader) + (Debug.log "heightContainer" heightContainer) + (Debug.log "heightFooter" heightFooter)

        result =
            if height - spaceTakenSoFar > 0 then
                (Debug.log "height" height) - spaceTakenSoFar + 1
            else
                0
    in
        div
            [ style [ ( "height", toString (Debug.log "result" result) ++ "px" ) ] ]
            []


type Params
    = Both
    | First
    | Second


page : Worksheet -> Html Msg
page model =
    let
        ( a', b', c' ) =
            model.trinomial

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

        problem =
            -- Factor: [Ax^2][ + Bx][ + C]
            "Factor: " ++ a ++ b ++ c

        ( p', q', r', s' ) =
            model.factored

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
            case model.answer of
                Hidden ->
                    div
                        [ class "row" ]
                        [ div
                            []
                            [ text problem ]
                        , button
                            [ onClick New ]
                            [ text "Get a New Problem!" ]
                        , button
                            [ onClick Show ]
                            [ text "Show Answer" ]
                        ]

                Shown ->
                    div
                        [ class "row" ]
                        [ div
                            []
                            [ text problem ]
                        , button
                            [ onClick New ]
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



-- SUBSCRIPTIONS


subscriptions : Worksheet -> Sub Msg
subscriptions model =
    Window.resizes Resize

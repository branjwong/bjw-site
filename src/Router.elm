module Router exposing (..)

import Navigation
import UrlParser exposing (Parser, (</>), format, int, oneOf, s, string)
import String


--

import Model exposing (..)


toHash : Page -> String
toHash page =
    case page of
        Home ->
            "#home"

        Programming ->
            "#programming"

        Teaching TeachingHome ->
            "#teaching/home"

        Teaching FactoringTrinomials ->
            "#teaching/factoring-trinomials"

        Teaching TrinomialGeneratorWorksheet ->
            "#teaching/trinomial-generator-worksheet"

        Teaching (Tutor Plug) ->
            "#teaching/tutor/plug"

        Teaching (Tutor MathTen) ->
            "#teaching/tutor/math10"

        Teaching (Tutor MathEleven) ->
            "#teaching/tutor/math11"

        Teaching (Tutor PhysicsEleven) ->
            "#teaching/tutor/physics11"

        Teaching (Tutor PhysicsTwelve) ->
            "#teaching/tutor/physics12"

        Teaching (Tutor PrecalcEleven) ->
            "#teaching/tutor/precalc11"

        Teaching (Tutor PrecalcTwelve) ->
            "#teaching/tutor/precalc12"

        Teaching (Tutor Japanese) ->
            "#teaching/tutor/japanese"

        Writing Archive ->
            "#writing/archive"

        Writing CrossGame ->
            "#writing/cross-game"

        Writing WhatIAmDoingWithMyLife ->
            "#writing/what-i-am-doing-with-my-life"

        Writing MovingBackToJapan ->
            "#writing/moving-back-to-japan"


hashParser : Navigation.Location -> Result String Page
hashParser location =
    UrlParser.parse identity pageParser (String.dropLeft 1 location.hash)


pageParser : Parser (Page -> a) a
pageParser =
    oneOf
        [ format Home (s "home")
        , format Programming (s "programming")
        , format Teaching (s "teaching" </> teachingParser)
        , format Writing (s "writing" </> writingParser)
        ]


teachingParser : Parser (TeachingPage -> a) a
teachingParser =
    oneOf
        [ format TeachingHome (s "home")
        , format FactoringTrinomials (s "factoring-trinomials")
        , format TrinomialGeneratorWorksheet (s "trinomial-generator-worksheet")
        , format Tutor (s "tutor" </> tutorParser)
        ]


tutorParser : Parser (TutorPage -> a) a
tutorParser =
    oneOf
        [ format Plug (s "plug")
        , format MathTen (s "math10")
        , format MathEleven (s "math11")
        , format PhysicsEleven (s "physics11")
        , format PhysicsTwelve (s "physics12")
        , format PrecalcEleven (s "precalc11")
        , format PrecalcTwelve (s "precalc12")
        , format Japanese (s "japanese")
        ]


writingParser : Parser (WritingPage -> a) a
writingParser =
    oneOf
        [ format Archive (s "archive")
        , format CrossGame (s "cross-game")
        , format WhatIAmDoingWithMyLife (s "what-i-am-doing-with-my-life")
        , format MovingBackToJapan (s "moving-back-to-japan")
        ]

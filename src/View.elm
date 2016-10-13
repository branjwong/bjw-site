module View exposing (view)

import Html exposing (Html)


--

import Model exposing (..)
import Update exposing (..)


--

import Home
import Programming
import Teaching
import Teaching.FactoringTrinomials
import Teaching.TrinomialGeneratorWorksheet
import Teaching.TutorPlug
import Teaching.TutorPlug.MathTen
import Teaching.TutorPlug.MathEleven
import Teaching.TutorPlug.PhysicsEleven
import Teaching.TutorPlug.PhysicsTwelve
import Teaching.TutorPlug.PrecalcEleven
import Teaching.TutorPlug.PrecalcTwelve
import Teaching.TutorPlug.Japanese
import Writing
import Writing.MovingBackToJapan
import Writing.CrossGame
import Writing.WhatIAmDoingWithMyLife


view : Model -> Html Msg
view model =
    case model.page of
        Home ->
            Home.view model

        Programming ->
            Programming.view model

        Teaching TeachingHome ->
            Teaching.view model

        Teaching FactoringTrinomials ->
            Teaching.FactoringTrinomials.view model

        Teaching TrinomialGeneratorWorksheet ->
            Teaching.TrinomialGeneratorWorksheet.view model

        Teaching (Tutor Plug) ->
            Teaching.TutorPlug.view model

        Teaching (Tutor MathTen) ->
            Teaching.TutorPlug.MathTen.view model

        Teaching (Tutor MathEleven) ->
            Teaching.TutorPlug.MathEleven.view model

        Teaching (Tutor PhysicsEleven) ->
            Teaching.TutorPlug.PhysicsEleven.view model

        Teaching (Tutor PhysicsTwelve) ->
            Teaching.TutorPlug.PhysicsTwelve.view model

        Teaching (Tutor PrecalcEleven) ->
            Teaching.TutorPlug.PrecalcEleven.view model

        Teaching (Tutor PrecalcTwelve) ->
            Teaching.TutorPlug.PrecalcTwelve.view model

        Teaching (Tutor Japanese) ->
            Teaching.TutorPlug.Japanese.view model

        Writing Archive ->
            Writing.view model

        Writing MovingBackToJapan ->
            Writing.MovingBackToJapan.view model

        Writing CrossGame ->
            Writing.CrossGame.view model

        Writing WhatIAmDoingWithMyLife ->
            Writing.WhatIAmDoingWithMyLife.view model

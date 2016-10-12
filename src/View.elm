module View exposing (view)

import Html exposing (Html)


--

import Model exposing (..)
import Update exposing (..)


--

import Programming
import Teaching
import Home
import Writing


view : Model -> Html Msg
view model =
    case model.page of
        Home ->
            Home.view model

        Programming ->
            Programming.view model

        Teaching ->
            Teaching.view model

        Writing ->
            Writing.view model

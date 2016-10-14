module Home exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events as Events exposing (onClick)
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)


--

import Model exposing (..)
import Update exposing (..)
import Router
import NavBar
import Notices
import Header
import Footer
import Disqus


view : Model -> Html Msg
view model =
    div
        []
        [ NavBar.navBar
        , NavBar.navBarSpace
        , home
        , space model.size.height
        , Footer.footer
        ]


space : Int -> Html Msg
space height =
    let
        heightContainer =
            600

        spaceTakenSoFar =
            heightNavBar + heightContainer + heightFooter

        result =
            if height - spaceTakenSoFar > 0 then
                height - spaceTakenSoFar + 1
            else
                0
    in
        div
            [ style [ ( "height", toString result ++ "px" ) ] ]
            []


home : Html Msg
home =
    div
        [ class "container" ]
        [ div
            [ class "HomeContainer" ]
            [ div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-3" ]
                    [ block "Teaching" (Router.toHash (Teaching TeachingHome)) ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Programming" (Router.toHash Programming) ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Writing" (Router.toHash (Writing Archive)) ]
                ]
            , div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-3" ]
                    [ block "Tutor Plug" (Router.toHash (Teaching (Tutor Plug))) ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Site Code" "https://github.com/branjwong/bjw-site" ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Latest Blog" (Router.toHash (Writing MovingBackToJapan)) ]
                ]
            , div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-5" ]
                    [ block "Megaman Game" "/megaman" ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Latest Review" (Router.toHash (Writing CrossGame)) ]
                ]
            , div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-7" ]
                    [ block "Latest Pick" (Router.toHash Home) ]
                  -- "/" ]
                ]
            ]
        ]


block : String -> String -> Html Msg
block title page =
    div
        [ class "BlockDiv" ]
        [ div
            [ style
                [ ( "text-align", "center" ) ]
            ]
            [ a
                [ href page ]
                [ text title ]
            ]
        , div
            [ class "BlockRim" ]
            [ div
                [ class "Block" ]
                []
            ]
        ]

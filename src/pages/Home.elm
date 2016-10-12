module Home exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events as Events exposing (onClick)
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)


--

import Model exposing (..)
import Update exposing (Msg(ChangePage))


--

import Markdown
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
                    [ block "Teaching" Home ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Programming" Programming ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Writing" Writing ]
                  -- Writing ]
                ]
            , div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-3" ]
                    [ block "Tutor Plug" Home ]
                  -- "/tutor-plug" ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Site Code" Home ]
                  -- "https://github.com/branjwong/bjw-site" ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Latest Blog" Home ]
                  -- "writing/blog/latest" ]
                ]
            , div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-5" ]
                    [ block "Megaman Game" Home ]
                  -- "/megaman" ]
                , div
                    [ class "col-sm-2" ]
                    [ block "Latest Review" Home ]
                  -- "/writing/reviews/latest" ]
                ]
            , div
                [ class "row" ]
                [ div
                    [ class "col-sm-2 col-sm-offset-7" ]
                    [ block "Latest Pick" Home ]
                  -- "/" ]
                ]
              {-
                 , div
                   [ class "row" ]
                   [ div
                     [ class "HomeExtraSpace" ]
                     []
                   ]
              -}
            ]
        ]


block : String -> Page -> Html Msg
block title page =
    div
        [ class "BlockDiv" ]
        [ div
            [ style
                [ ( "text-align", "center" ) ]
            ]
            [ a
                [ Events.onClick (ChangePage page) ]
                [ text title ]
            ]
        , div
            [ class "BlockRim" ]
            [ div
                [ class "Block" ]
                []
            ]
        ]

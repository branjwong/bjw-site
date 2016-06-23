module Home exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Window exposing (Size)
import Task

import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)
import NavBar
import Header
import Notices
import Footer
import Bootstrap

--port title = "Home"

main =
  Html.program
    { init = (Size 0 0, Task.perform Resize Resize Window.size)
    , update = update
    , subscriptions = subscriptions
    , view = view
    }

subscriptions : Model -> Sub Msg
subscriptions model =
  Window.resizes Resize

type alias Model = Size

type Msg
  = Resize Size

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Resize size ->
      (size, Cmd.none)

view : Model -> Html msg
view model =
  div 
    []
    [ NavBar.navBar 
    , NavBar.navBarSpace
    , home
    , space model.height
    , Footer.footer
    ]

space : Int -> Html msg
space height = 
  let 
    heightContainer = 600
    spaceTakenSoFar = heightNavBar + heightContainer + heightFooter
    result =
      if height - spaceTakenSoFar > 0 then
        height - spaceTakenSoFar + 1
      else
        0
  in
    div 
      [ style [ ("height" , toString result ++ "px" ) ] ]
      []


home : Html msg
home =
  div 
    [ class "container" ]
    [ div
      [ class "HomeContainer" ]
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-2 col-sm-offset-3"]
          [ block "Teaching" "/teaching" ]
        , div
          [ class "col-sm-2" ]
          [ block "Programming" "/programming" ]
        , div
          [ class "col-sm-2" ]
          [ block "Writing" "/writing" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-2 col-sm-offset-3"]
          [ block "Tutor Plug" "/tutor-plug" ]
        , div
          [ class "col-sm-2" ]
          [ block "Site Code" "https://github.com/branjwong/bjw-site" ]
        , div
          [ class "col-sm-2" ]
          [ block "Latest Blog" "writing/blog/latest" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-2 col-sm-offset-5"]
          [ block "Megaman Game" "/megaman" ]
        , div
          [ class "col-sm-2" ]
          [ block "Latest Review" "/writing/reviews/latest" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-2 col-sm-offset-7"]
          [ block "Latest Pick" "/" ]
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

block : String -> String -> Html msg
block title link = 
  div
    [ class "BlockDiv" ]
    [ div
      [ style
        [ ("text-align", "center") ]
      ]
      [ a
        [ href link ]
        [ text title ]
      ]
    , div
      [ class "BlockRim" ]
      [ div
        [ class "Block" ]
        []
      ]
    ]
 

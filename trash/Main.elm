import StartApp.Simple as StartApp

import TopBar 
import Home
import Teaching
import Blog
--import Footer

import Html exposing (..)
import Html.Attributes exposing (..)

-- MODEL

type alias Model = 
    { currentPage : String
    }


model : Model
model = 
    { currentPage = "home"
    }

-- UPDATE

type Action
    = NoOp
    | SwitchPage String



update : Action -> Model -> Model
update action model =
    case action of
        NoOp -> model

        SwitchPage page ->
            if page == "home"
                then { model | currentPage <- "home" }
            else if page == "teaching"
                then { model | currentPage <- "teaching" }
            else if page == "blog"
                then { model | currentPage <- "blog" }
            else
                model


-- VIEW

modelPage : Model -> Html
modelPage model = 
    let
        page = model.currentPage
    in
        case page of
            "home" -> Home.displayPage
            "teaching" -> Teaching.displayPage
            "blog" -> Blog.displayPage


view : Signal.Address Action -> Model -> Html
view address model = 
    div []
        [ TopBar.topBar model.currentPage
        , modelPage model
        ]


main : Signal Html
main = 
    StartApp.start { model = model, view = view, update = update }

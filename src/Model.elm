module Model exposing (..)

import Window exposing (Size)


type alias Model =
    { page : Page
    , size : Size
    }


type Page
    = Home
    | Programming
    | Teaching
    | Writing

module Update exposing (..)

import Window exposing (Size)
import Model exposing (..)
import Debug


type Msg
    = Resize Size
    | ChangePage Page


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case Debug.log "Update: " msg of
        Resize size ->
            ( { model | size = size }, Cmd.none )

        ChangePage page ->
            ( { model | page = page }, Cmd.none )

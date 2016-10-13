module Model exposing (..)

import Window exposing (Size)


type alias Model =
    { page : Page
    , size : Size
    }


type Page
    = Home
    | Programming
    | Teaching TeachingPage
    | Writing WritingPage


type TeachingPage
    = TeachingHome
    | Tutor TutorPage


type TutorPage
    = Plug
    | MathTen
    | MathEleven
    | PhysicsEleven
    | PhysicsTwelve
    | PrecalcEleven
    | PrecalcTwelve
    | Japanese


type WritingPage
    = Archive
    | CrossGame
    | WhatIAmDoingWithMyLife
    | MovingBackToJapan


type Msg
    = NoOp
    | Resize Size

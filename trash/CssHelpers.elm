module Style.CssHelpers where

import Stylesheets exposing (..)

fontSize valueA valueB =
  attr2 "font-size" numberToString unitsToString valueA valueB

fontWeight value =
  attr1 "font-weight" (\a -> a) value

fontFamily value = 
  attr1 "font-family" (\a -> a) value

textAlign value =
  attr1 "text-align" (\a -> a) value

borderBottomColor value =
  attr1 "border-bottom-color" colorToString value

borderTopColor value =
  attr1 "border-top-color" colorToString value

borderTopWidth valueA valueB =
  attr2 "border-top-width" numberToString unitsToString valueA valueB

borderRightWidth valueA valueB =
  attr2 "border-right-width" numberToString unitsToString valueA valueB

borderBottomWidth valueA valueB =
  attr2 "border-bottom-width" numberToString unitsToString valueA valueB

borderLeftWidth valueA valueB =
  attr2 "border-left-width" numberToString unitsToString valueA valueB

content value =
  attr1 "content" toString value

position value =
  attr1 "position" (\a -> a) value

borderStyle value =
  attr1 "border-style" (\a -> a) value

borderColor value =
  attr1 "border-color" (\a -> a) value

left valueA valueB =
  attr2 "left" numberToString unitsToString valueA valueB

right valueA valueB =
  attr2 "right" numberToString unitsToString valueA valueB

 --Overloaded Function
margin2 value =
  attr1 "margin" (\a -> a) value

textShadow2 value =
  attr1 "text-shadow" (\a -> a) value

module Hello exposing (..)

import Html exposing (text)

main =
  text <| String.fromInt <| add 2 3

add : Int -> Int -> Int
add x y = x + y

module Hello exposing (..)

import Html exposing (text)

main =
  text <| String.fromInt <| add3 4

add : Int -> Int -> Int
add x y = x + y

add3 : Int -> Int
add3 = add 3

module Hello exposing (..)

import Html exposing (text)
import String exposing (fromInt)
import List exposing (foldr, map)

main =
  text 
  <| foldr (++) ""
  <| map fromInt [(add3 1), (sub 7 5)]

add : Int -> Int -> Int
add x y = x + y

add3 : Int -> Int
add3 = add 3

sub : Int -> Int -> Int
sub = \x y -> x - y

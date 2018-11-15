module Hello exposing (main)

import Html exposing (text)
import String exposing (fromInt)
import List exposing (foldr, map)
import Debug exposing (log)

main =
  text 
  << foldr (++) ""
  << map fromInt
  <| log "List" [(add3 1), (sub7 5)]

add : Int -> Int -> Int
add x y = x + y

add3 : Int -> Int
add3 = add 3

sub7 : Int -> Int
sub7 =
  let
    sub = \x y -> x - y
  in
    sub 7

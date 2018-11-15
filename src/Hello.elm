module Hello exposing (main)

import Debug exposing (log)
import Html exposing (text)
import List exposing (foldr, map)
import String exposing (fromInt)


main =
    text
        << foldr (++) ""
        << map fromInt
    <|
        log
            "List"
            [ add3 1, sub7 5 ]


add : Int -> Int -> Int
add x y =
    x + y


add3 : Int -> Int
add3 =
    add 3


sub7 : Int -> Int
sub7 =
    let
        sub =
            \x y -> x - y
    in
    sub 7


type Nat
    = Z
    | Succ Nat

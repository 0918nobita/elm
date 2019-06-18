import Html exposing (p, text)

import Parser exposing
  ( Parser
  , (|.)
  , (|=)
  , succeed
  , symbol
  , float
  , spaces
  )

import Debug exposing (log)

import Result exposing (toMaybe)

type alias Point = { x : Float, y : Float }

point : Parser Point
point =
  succeed Point
    |. symbol "("
    |. spaces
    |= float
    |. spaces
    |. symbol ","
    |. spaces
    |= float
    |. spaces
    |. symbol ")"

main =
  let
    _ = log "ログ出力のラベル"
        (Parser.run point "( 1.0 , 2.0 )" |> toMaybe)
  in
    p [] [text "hello, world"]

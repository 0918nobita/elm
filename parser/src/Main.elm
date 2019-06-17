import Html exposing (h1, p, div, text)

import Parser exposing (Parser, oneOf)

import Debug exposing (..)

hello = h1 [] [text "Hello"]

world = p [] [text "world"]

main =
  let _ = Debug.log "ログ出力のラベル" "値" in
    div [] [hello, world]

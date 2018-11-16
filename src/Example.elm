module Example exposing (main)

import Browser
import Html exposing (Html, button, div, h1, text)
import Html.Events exposing (onClick)
import Random



{-
   [update]
   Counter モジュールでは、update 関数はただ Model を生成するだけ
   ここでの update 関数は Roll メッセージを受け取り、2 つの値を Tuple で返す
-}


type Msg
    = Roll
    | NewFace Int


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model, Random.generate NewFace (Random.int 1 6) )

        NewFace newFace ->
            ( Model newFace, Cmd.none )


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- Model


type alias Model =
    { dieFace : Int }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model 1, Cmd.none )



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- View


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text (String.fromInt model.dieFace) ]
        , button [ onClick Roll ] [ text "Roll" ]
        ]

module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (class, src)
import Tailwind.Main as TW
import Tailwind.String as TWS



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "flex justify-center items-center h-screen", TW.flex_col ]
        [ h1 [ class ("text-white " ++ TWS.bg_blue_500), TW.p_8 ] [ text "Your Elm App with TailwindCSS is working!" ]
        , div [ TW.bg_gray_500, TW.text_white, TW.p_4, TW.mt_8 ] [ text "Here we have used all three forms of TailwindCSS" ]
        , div [ TW.text_left, TW.mt_8, TW.bg_gray_200, class "p-4 shadow-lg" ]
            [ span [] [ text "They are: " ]
            , ol [ TW.list_decimal, TW.p_4 ]
                [ li [] [ text "Using Tailwind as your regular class" ]
                , li [] [ text "Using Tailwind classes as Elm constants which you can use to concat and then use as attributes" ]
                , li [] [ text "Using Tailwind as Html Attribute function" ]
                ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }

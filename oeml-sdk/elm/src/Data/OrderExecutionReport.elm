{-
   OEML - REST API
   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

   The version of the OpenAPI document: v1
   Contact: support@coinapi.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.OrderExecutionReport exposing (OrderExecutionReport, ExecInst(..), decoder, encode, encodeWithTag, toString)

import Data.OrdSide as OrdSide exposing (OrdSide)
import Data.OrdType as OrdType exposing (OrdType)
import Data.TimeInForce as TimeInForce exposing (TimeInForce)
import DateOnly exposing (DateOnly)
import Data.OrdStatus as OrdStatus exposing (OrdStatus)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


{-| The order execution report object.
-}
type alias OrderExecutionReport =
    { exchangeId : String
    , clientOrderId : String
    , symbolIdExchange : Maybe (String)
    , symbolIdCoinapi : Maybe (String)
    , amountOrder : Float
    , price : Float
    , side : OrdSide
    , orderType : OrdType
    , timeInForce : TimeInForce
    , expireTime : Maybe (DateOnly)
    , execInst : Maybe ((List ExecInst))
    , clientOrderIdFormatExchange : String
    , exchangeOrderId : Maybe (String)
    , amountOpen : Float
    , amountFilled : Float
    , status : OrdStatus
    , timeOrder : (List (List String))
    , errorMessage : Maybe (String)
    }


type ExecInst
    = MAKERORCANCEL
    | AUCTIONONLY
    | INDICATIONOFINTEREST



decoder : Decoder OrderExecutionReport
decoder =
    Decode.succeed OrderExecutionReport
        |> required "exchange_id" Decode.string
        |> required "client_order_id" Decode.string
        |> optional "symbol_id_exchange" (Decode.nullable Decode.string) Nothing
        |> optional "symbol_id_coinapi" (Decode.nullable Decode.string) Nothing
        |> required "amount_order" Decode.float
        |> required "price" Decode.float
        |> required "side" OrdSide.decoder
        |> required "order_type" OrdType.decoder
        |> required "time_in_force" TimeInForce.decoder
        |> optional "expire_time" (Decode.nullable DateOnly.decoder) Nothing
        |> optional "exec_inst" (Decode.nullable (Decode.list execInstDecoder)) Nothing
        |> required "client_order_id_format_exchange" Decode.string
        |> optional "exchange_order_id" (Decode.nullable Decode.string) Nothing
        |> required "amount_open" Decode.float
        |> required "amount_filled" Decode.float
        |> required "status" OrdStatus.decoder
        |> required "time_order" (Decode.list (Decode.list Decode.string))
        |> optional "error_message" (Decode.nullable Decode.string) Nothing



encode : OrderExecutionReport -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> OrderExecutionReport -> Encode.Value
encodeWithTag (tagField, tag) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : OrderExecutionReport -> List (String, Encode.Value)
encodePairs model =
    [ ( "exchange_id", Encode.string model.exchangeId )
    , ( "client_order_id", Encode.string model.clientOrderId )
    , ( "symbol_id_exchange", Maybe.withDefault Encode.null (Maybe.map Encode.string model.symbolIdExchange) )
    , ( "symbol_id_coinapi", Maybe.withDefault Encode.null (Maybe.map Encode.string model.symbolIdCoinapi) )
    , ( "amount_order", Encode.float model.amountOrder )
    , ( "price", Encode.float model.price )
    , ( "side", OrdSide.encode model.side )
    , ( "order_type", OrdType.encode model.orderType )
    , ( "time_in_force", TimeInForce.encode model.timeInForce )
    , ( "expire_time", Maybe.withDefault Encode.null (Maybe.map DateOnly.encode model.expireTime) )
    , ( "exec_inst", Maybe.withDefault Encode.null (Maybe.map (Encode.list encodeExecInst) model.execInst) )
    , ( "client_order_id_format_exchange", Encode.string model.clientOrderIdFormatExchange )
    , ( "exchange_order_id", Maybe.withDefault Encode.null (Maybe.map Encode.string model.exchangeOrderId) )
    , ( "amount_open", Encode.float model.amountOpen )
    , ( "amount_filled", Encode.float model.amountFilled )
    , ( "status", OrdStatus.encode model.status )
    , ( "time_order", (Encode.list (Encode.list Encode.string)) model.timeOrder )
    , ( "error_message", Maybe.withDefault Encode.null (Maybe.map Encode.string model.errorMessage) )
    ]



toString : OrderExecutionReport -> String
toString =
    Encode.encode 0 << encode




execInstDecoder : Decoder ExecInst
execInstDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "MAKER_OR_CANCEL" ->
                        Decode.succeed MAKERORCANCEL

                    "AUCTION_ONLY" ->
                        Decode.succeed AUCTIONONLY

                    "INDICATION_OF_INTEREST" ->
                        Decode.succeed INDICATIONOFINTEREST

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )



encodeExecInst : ExecInst -> Encode.Value
encodeExecInst model =
    case model of
        MAKERORCANCEL ->
            Encode.string "MAKER_OR_CANCEL"

        AUCTIONONLY ->
            Encode.string "AUCTION_ONLY"

        INDICATIONOFINTEREST ->
            Encode.string "INDICATION_OF_INTEREST"





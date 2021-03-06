{-
   OEML - REST API
   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       

   The version of the OpenAPI document: v1
   Contact: support@coinapi.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.PositionData exposing (PositionData, decoder, encode, encodeWithTag, toString)

import Data.OrdSide as OrdSide exposing (OrdSide)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


{-| The Position object.
-}
type alias PositionData =
    { symbolIdExchange : Maybe (String)
    , symbolIdCoinapi : Maybe (String)
    , avgEntryPrice : Maybe (Float)
    , quantity : Maybe (Float)
    , side : Maybe (OrdSide)
    , unrealizedPnl : Maybe (Float)
    , leverage : Maybe (Float)
    , crossMargin : Maybe (Bool)
    , liquidationPrice : Maybe (Float)
    , rawData : Maybe (Object)
    }


decoder : Decoder PositionData
decoder =
    Decode.succeed PositionData
        |> optional "symbol_id_exchange" (Decode.nullable Decode.string) Nothing
        |> optional "symbol_id_coinapi" (Decode.nullable Decode.string) Nothing
        |> optional "avg_entry_price" (Decode.nullable Decode.float) Nothing
        |> optional "quantity" (Decode.nullable Decode.float) Nothing
        |> optional "side" (Decode.nullable OrdSide.decoder) Nothing
        |> optional "unrealized_pnl" (Decode.nullable Decode.float) Nothing
        |> optional "leverage" (Decode.nullable Decode.float) Nothing
        |> optional "cross_margin" (Decode.nullable Decode.bool) Nothing
        |> optional "liquidation_price" (Decode.nullable Decode.float) Nothing
        |> optional "raw_data" (Decode.nullable Object.decoder) Nothing



encode : PositionData -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> PositionData -> Encode.Value
encodeWithTag (tagField, tag) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : PositionData -> List (String, Encode.Value)
encodePairs model =
    [ ( "symbol_id_exchange", Maybe.withDefault Encode.null (Maybe.map Encode.string model.symbolIdExchange) )
    , ( "symbol_id_coinapi", Maybe.withDefault Encode.null (Maybe.map Encode.string model.symbolIdCoinapi) )
    , ( "avg_entry_price", Maybe.withDefault Encode.null (Maybe.map Encode.float model.avgEntryPrice) )
    , ( "quantity", Maybe.withDefault Encode.null (Maybe.map Encode.float model.quantity) )
    , ( "side", Maybe.withDefault Encode.null (Maybe.map OrdSide.encode model.side) )
    , ( "unrealized_pnl", Maybe.withDefault Encode.null (Maybe.map Encode.float model.unrealizedPnl) )
    , ( "leverage", Maybe.withDefault Encode.null (Maybe.map Encode.float model.leverage) )
    , ( "cross_margin", Maybe.withDefault Encode.null (Maybe.map Encode.bool model.crossMargin) )
    , ( "liquidation_price", Maybe.withDefault Encode.null (Maybe.map Encode.float model.liquidationPrice) )
    , ( "raw_data", Maybe.withDefault Encode.null (Maybe.map Object.encode model.rawData) )
    ]



toString : PositionData -> String
toString =
    Encode.encode 0 << encode





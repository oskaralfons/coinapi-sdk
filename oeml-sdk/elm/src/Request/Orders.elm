{-
   OEML - REST API
   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

   The version of the OpenAPI document: v1

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Request.Orders exposing (v1OrdersCancelAllPost, v1OrdersCancelPost, v1OrdersGet, v1OrdersPost, v1OrdersStatusClientOrderIdGet)

import Data.ExecutionReport as ExecutionReport exposing (ExecutionReport)
import Data.Message as Message exposing (Message)
import Data.CreateOrderValidationError as CreateOrderValidationError exposing (CreateOrderValidationError)
import Data.OrderCancelSingleRequest as OrderCancelSingleRequest exposing (OrderCancelSingleRequest)
import Data.OrderCancelAllRequest as OrderCancelAllRequest exposing (OrderCancelAllRequest)
import Data.NewOrder as NewOrder exposing (NewOrder)
import Dict
import Http
import Json.Decode as Decode
import Url.Builder as Url




basePath : String
basePath =
    "http://localhost:8080"


{-| This request cancels all open orders across all or single specified exchange.
-}
v1OrdersCancelAllPost :
    { onSend : Result Http.Error Message -> msg


    , body : OrderCancelAllRequest


    }
    -> Cmd msg
v1OrdersCancelAllPost params =
    Http.request
        { method = "POST"
        , headers = List.filterMap identity []
        , url = Url.crossOrigin basePath
            ["v1", "orders", "cancel", "all"]
            (List.filterMap identity [])
        , body = Http.jsonBody <| OrderCancelAllRequest.encode params.body
        , expect = Http.expectJson params.onSend Message.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }


{-| This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
-}
v1OrdersCancelPost :
    { onSend : Result Http.Error ExecutionReport -> msg


    , body : OrderCancelSingleRequest


    }
    -> Cmd msg
v1OrdersCancelPost params =
    Http.request
        { method = "POST"
        , headers = List.filterMap identity []
        , url = Url.crossOrigin basePath
            ["v1", "orders", "cancel"]
            (List.filterMap identity [])
        , body = Http.jsonBody <| OrderCancelSingleRequest.encode params.body
        , expect = Http.expectJson params.onSend ExecutionReport.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }


{-| Get all current open orders across all or single specified exchange.
-}
v1OrdersGet :
    { onSend : Result Http.Error (List NewOrder) -> msg




    , exchangeId : Maybe (String)
    }
    -> Cmd msg
v1OrdersGet params =
    Http.request
        { method = "GET"
        , headers = List.filterMap identity []
        , url = Url.crossOrigin basePath
            ["v1", "orders"]
            (List.filterMap identity [Maybe.map (Url.string "exchange_id" << identity) params.exchangeId])
        , body = Http.emptyBody
        , expect = Http.expectJson params.onSend (Decode.list NewOrder.decoder)
        , timeout = Just 30000
        , tracker = Nothing
        }


{-| This request creating new order for the specific exchange.
-}
v1OrdersPost :
    { onSend : Result Http.Error ExecutionReport -> msg


    , body : NewOrder


    }
    -> Cmd msg
v1OrdersPost params =
    Http.request
        { method = "POST"
        , headers = List.filterMap identity []
        , url = Url.crossOrigin basePath
            ["v1", "orders"]
            (List.filterMap identity [])
        , body = Http.jsonBody <| NewOrder.encode params.body
        , expect = Http.expectJson params.onSend ExecutionReport.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }


{-| Get the current order status for the specified order. The requested order can no longer be active.
-}
v1OrdersStatusClientOrderIdGet :
    { onSend : Result Http.Error ExecutionReport -> msg



    , clientOrderId : String

    }
    -> Cmd msg
v1OrdersStatusClientOrderIdGet params =
    Http.request
        { method = "GET"
        , headers = List.filterMap identity []
        , url = Url.crossOrigin basePath
            ["v1", "orders", "status", identity params.clientOrderId]
            (List.filterMap identity [])
        , body = Http.emptyBody
        , expect = Http.expectJson params.onSend ExecutionReport.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }

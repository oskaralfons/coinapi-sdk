# org.openapitools.client - Kotlin client library for OEML - REST API

## Requires

* Kotlin 1.3.41
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all orders
*OrdersApi* | [**v1OrdersCancelPost**](docs/OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order
*OrdersApi* | [**v1OrdersGet**](docs/OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get all orders
*OrdersApi* | [**v1OrdersPost**](docs/OrdersApi.md#v1orderspost) | **POST** /v1/orders | Create new order
*OrdersApi* | [**v1OrdersStatusClientOrderIdGet**](docs/OrdersApi.md#v1ordersstatusclientorderidget) | **GET** /v1/orders/status/{client_order_id} | Get order status
*PositionsApi* | [**v1PositionsGet**](docs/PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get positions


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.Balance](docs/Balance.md)
 - [org.openapitools.client.models.BalanceData](docs/BalanceData.md)
 - [org.openapitools.client.models.CreateOrderValidationError](docs/CreateOrderValidationError.md)
 - [org.openapitools.client.models.ExecutionReport](docs/ExecutionReport.md)
 - [org.openapitools.client.models.Message](docs/Message.md)
 - [org.openapitools.client.models.NewOrder](docs/NewOrder.md)
 - [org.openapitools.client.models.OrdSide](docs/OrdSide.md)
 - [org.openapitools.client.models.OrdStatus](docs/OrdStatus.md)
 - [org.openapitools.client.models.OrdType](docs/OrdType.md)
 - [org.openapitools.client.models.OrderCancelAllRequest](docs/OrderCancelAllRequest.md)
 - [org.openapitools.client.models.OrderCancelSingleRequest](docs/OrderCancelSingleRequest.md)
 - [org.openapitools.client.models.Orders](docs/Orders.md)
 - [org.openapitools.client.models.OrdersData](docs/OrdersData.md)
 - [org.openapitools.client.models.Position](docs/Position.md)
 - [org.openapitools.client.models.PositionData](docs/PositionData.md)
 - [org.openapitools.client.models.Severity](docs/Severity.md)
 - [org.openapitools.client.models.TimeInForce](docs/TimeInForce.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.

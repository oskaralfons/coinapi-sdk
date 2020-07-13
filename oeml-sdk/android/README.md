# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.BalancesApi;

public class BalancesApiExample {

    public static void main(String[] args) {
        BalancesApi apiInstance = new BalancesApi();
        String exchangeId = KRAKEN; // String | Exchange name
        try {
            List<Balance> result = apiInstance.v1BalancesGet(exchangeId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BalancesApi#v1BalancesGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders
*OrdersApi* | [**v1OrdersCancelPost**](docs/OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
*OrdersApi* | [**v1OrdersGet**](docs/OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get all orders
*OrdersApi* | [**v1OrdersPost**](docs/OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order
*OrdersApi* | [**v1OrdersStatusClientOrderIdGet**](docs/OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order status
*PositionsApi* | [**v1PositionsGet**](docs/PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions


## Documentation for Models

 - [Balance](docs/Balance.md)
 - [BalanceData](docs/BalanceData.md)
 - [ExecutionReport](docs/ExecutionReport.md)
 - [ExecutionReportAllOf](docs/ExecutionReportAllOf.md)
 - [Message](docs/Message.md)
 - [NewOrderSingle](docs/NewOrderSingle.md)
 - [OrdSide](docs/OrdSide.md)
 - [OrdStatus](docs/OrdStatus.md)
 - [OrdType](docs/OrdType.md)
 - [OrderCancelAllRequest](docs/OrderCancelAllRequest.md)
 - [OrderCancelSingleRequest](docs/OrderCancelSingleRequest.md)
 - [Position](docs/Position.md)
 - [PositionData](docs/PositionData.md)
 - [Severity](docs/Severity.md)
 - [TimeInForce](docs/TimeInForce.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author




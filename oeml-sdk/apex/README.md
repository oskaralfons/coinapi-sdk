# OEML - REST API API Client


Lorem2 Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n###Lifecycle\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n###Lifecycle 2\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama.\n

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASBalancesApi api = new OASBalancesApi();

Map<String, Object> params = new Map<String, Object>{
    'exchangeId' => KRAKEN
};

try {
    // cross your fingers
    List<OASBalance> result = api.v1BalancesGet(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASBalancesApi* | [**v1BalancesGet**](OASBalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OASOrdersApi* | [**v1OrdersCancelAllPost**](OASOrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
*OASOrdersApi* | [**v1OrdersCancelPost**](OASOrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
*OASOrdersApi* | [**v1OrdersGet**](OASOrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
*OASOrdersApi* | [**v1OrdersPost**](OASOrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order
*OASPositionsApi* | [**v1PositionsGet**](OASPositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions


## Documentation for Models

 - [OASBalance](OASBalance.md)
 - [OASBalanceData](OASBalanceData.md)
 - [OASCancelAllOrder](OASCancelAllOrder.md)
 - [OASCancelOrder](OASCancelOrder.md)
 - [OASCreateOrder400](OASCreateOrder400.md)
 - [OASMessages](OASMessages.md)
 - [OASMessagesInfo](OASMessagesInfo.md)
 - [OASMessagesOk](OASMessagesOk.md)
 - [OASNewOrder](OASNewOrder.md)
 - [OASOrder](OASOrder.md)
 - [OASOrderData](OASOrderData.md)
 - [OASOrderLive](OASOrderLive.md)
 - [OASOrderStatus](OASOrderStatus.md)
 - [OASPosition](OASPosition.md)
 - [OASPositionData](OASPositionData.md)
 - [OASTimeInForce](OASTimeInForce.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author




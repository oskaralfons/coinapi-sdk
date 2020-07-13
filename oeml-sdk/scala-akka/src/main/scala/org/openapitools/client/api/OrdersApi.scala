/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.api

import org.openapitools.client.model.CreateOrderValidationError
import org.openapitools.client.model.ExecutionReport
import org.openapitools.client.model.Message
import org.openapitools.client.model.NewOrder
import org.openapitools.client.model.OrderCancelAllRequest
import org.openapitools.client.model.OrderCancelSingleRequest
import org.openapitools.client.model.Orders
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object OrdersApi {

  def apply(baseUrl: String = "http://localhost:8080") = new OrdersApi(baseUrl)
}

class OrdersApi(baseUrl: String) {
  
  /**
   * This request cancels all open orders across all or single specified exchange.
   * 
   * Expected answers:
   *   code 200 : Message (Result)
   * 
   * @param orderCancelAllRequest 
   */
  def v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest): ApiRequest[Message] =
    ApiRequest[Message](ApiMethods.POST, baseUrl, "/v1/orders/cancel/all", "application/json")
      .withBody(orderCancelAllRequest)
      .withSuccessResponse[Message](200)
      

  /**
   * This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
   * 
   * Expected answers:
   *   code 200 : ExecutionReport (Canceled order)
   *   code 400 : CreateOrderValidationError (Validation errors)
   *   code 490 : Message (Exchange not registered)
   * 
   * @param orderCancelSingleRequest 
   */
  def v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest): ApiRequest[ExecutionReport] =
    ApiRequest[ExecutionReport](ApiMethods.POST, baseUrl, "/v1/orders/cancel", "application/json")
      .withBody(orderCancelSingleRequest)
      .withSuccessResponse[ExecutionReport](200)
      .withErrorResponse[CreateOrderValidationError](400)
      .withErrorResponse[Message](490)
      

  /**
   * Get all current open orders across all or single specified exchange.
   * 
   * Expected answers:
   *   code 200 : Orders (Collection of requested open orders.)
   * 
   * @param exchangeId Filter the output to the orders from the specific exchange.
   */
  def v1OrdersGet(exchangeId: Option[String] = None): ApiRequest[Orders] =
    ApiRequest[Orders](ApiMethods.GET, baseUrl, "/v1/orders", "application/json")
      .withQueryParam("exchange_id", exchangeId)
      .withSuccessResponse[Orders](200)
      

  /**
   * This request creating new order for the specific exchange.
   * 
   * Expected answers:
   *   code 200 : ExecutionReport (Created)
   *   code 400 : CreateOrderValidationError (Validation errors)
   *   code 490 : Message (Exchange not registered)
   * 
   * @param newOrder 
   */
  def v1OrdersPost(newOrder: NewOrder): ApiRequest[ExecutionReport] =
    ApiRequest[ExecutionReport](ApiMethods.POST, baseUrl, "/v1/orders", "application/json")
      .withBody(newOrder)
      .withSuccessResponse[ExecutionReport](200)
      .withErrorResponse[CreateOrderValidationError](400)
      .withErrorResponse[Message](490)
      

  /**
   * Get the current order status for the specified order. The requested order can no longer be active.
   * 
   * Expected answers:
   *   code 200 : ExecutionReport (The order was found.)
   *   code 400 : Message (The order was not found.)
   * 
   * @param clientOrderId Order Client Id of the order for which the status is requested.
   */
  def v1OrdersStatusClientOrderIdGet(clientOrderId: String): ApiRequest[ExecutionReport] =
    ApiRequest[ExecutionReport](ApiMethods.GET, baseUrl, "/v1/orders/status/{client_order_id}", "application/json")
      .withPathParam("client_order_id", clientOrderId)
      .withSuccessResponse[ExecutionReport](200)
      .withErrorResponse[Message](400)
      



}


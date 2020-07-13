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
package org.openapitools.client.models


import com.squareup.moshi.Json
/**
 * 
 * @param exchangeId Exchange identifier.
 * @param exchangeOrderId The unique identifier of the order assigned by the exchange.
 * @param clientOrderId The unique identifier of the order assigned by the client.
 */

data class CancelOrderSingleRequest (
    /* Exchange identifier. */
    @Json(name = "exchange_id")
    val exchangeId: kotlin.String? = null,
    /* The unique identifier of the order assigned by the exchange. */
    @Json(name = "exchange_order_id")
    val exchangeOrderId: kotlin.String? = null,
    /* The unique identifier of the order assigned by the client. */
    @Json(name = "client_order_id")
    val clientOrderId: kotlin.String? = null
)

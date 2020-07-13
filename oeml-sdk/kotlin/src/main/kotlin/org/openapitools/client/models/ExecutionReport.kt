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

import org.openapitools.client.models.ExecutionReportAllOf
import org.openapitools.client.models.NewOrderSingle
import org.openapitools.client.models.OrdSide
import org.openapitools.client.models.OrdStatus
import org.openapitools.client.models.OrdType
import org.openapitools.client.models.TimeInForce

import com.squareup.moshi.Json
/**
 * 
 * @param exchangeId Exchange identifier.
 * @param clientOrderId Unique identifier for the order assigned by the `OEML API` client.
 * @param amountOrder Order quantity.
 * @param price Order price.
 * @param side 
 * @param orderType 
 * @param timeInForce 
 * @param clientOrderIdFormatExchange Hash client id
 * @param amountOpen Amount open
 * @param amountFilled Amount filled
 * @param status 
 * @param timeOrder History of order status changes
 * @param symbolExchange Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @param symbolCoinapi CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @param expireTime Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @param execInst Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
 * @param exchangeOrderId Exchange order id
 * @param errorMessage Error message
 */

data class ExecutionReport (
    /* Exchange identifier. */
    @Json(name = "exchange_id")
    val exchangeId: kotlin.String,
    /* Unique identifier for the order assigned by the `OEML API` client. */
    @Json(name = "client_order_id")
    val clientOrderId: kotlin.String,
    /* Order quantity. */
    @Json(name = "amount_order")
    val amountOrder: java.math.BigDecimal,
    /* Order price. */
    @Json(name = "price")
    val price: java.math.BigDecimal,
    @Json(name = "side")
    val side: OrdSide,
    @Json(name = "order_type")
    val orderType: OrdType,
    @Json(name = "time_in_force")
    val timeInForce: TimeInForce,
    /* Hash client id */
    @Json(name = "client_order_id_format_exchange")
    val clientOrderIdFormatExchange: kotlin.String,
    /* Amount open */
    @Json(name = "amount_open")
    val amountOpen: java.math.BigDecimal,
    /* Amount filled */
    @Json(name = "amount_filled")
    val amountFilled: java.math.BigDecimal,
    @Json(name = "status")
    val status: OrdStatus,
    /* History of order status changes */
    @Json(name = "time_order")
    val timeOrder: kotlin.Array<kotlin.Array<kotlin.String>>,
    /* Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
    @Json(name = "symbol_exchange")
    val symbolExchange: kotlin.String? = null,
    /* CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
    @Json(name = "symbol_coinapi")
    val symbolCoinapi: kotlin.String? = null,
    /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
    @Json(name = "expire_time")
    val expireTime: java.time.LocalDate? = null,
    /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> */
    @Json(name = "exec_inst")
    val execInst: kotlin.Array<ExecutionReport.ExecInst>? = null,
    /* Exchange order id */
    @Json(name = "exchange_order_id")
    val exchangeOrderId: kotlin.String? = null,
    /* Error message */
    @Json(name = "error_message")
    val errorMessage: kotlin.String? = null
) {

    /**
    * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
    * Values: mAKERORCANCEL,aUCTIONONLY,iNDICATIONOFINTEREST
    */
    
    enum class ExecInst(val value: kotlin.String){
        @Json(name = "MAKER_OR_CANCEL") mAKERORCANCEL("MAKER_OR_CANCEL"),
        @Json(name = "AUCTION_ONLY") aUCTIONONLY("AUCTION_ONLY"),
        @Json(name = "INDICATION_OF_INTEREST") iNDICATIONOFINTEREST("INDICATION_OF_INTEREST");
    }
}


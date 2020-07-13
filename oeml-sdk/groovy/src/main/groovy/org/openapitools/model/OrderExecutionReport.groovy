package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.NewOrderSingle;
import org.openapitools.model.OrdSide;
import org.openapitools.model.OrdStatus;
import org.openapitools.model.OrdType;
import org.openapitools.model.OrderExecutionReportAllOf;
import org.openapitools.model.TimeInForce;

@Canonical
class OrderExecutionReport {
    /* Exchange identifier. */
    String exchangeId
    /* The unique identifier of the order assigned by the client. */
    String clientOrderId
    /* Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the new order. */
    String symbolExchange
    /* CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the new order. */
    String symbolCoinapi
    /* Order quantity. */
    BigDecimal amountOrder
    /* Order price. */
    BigDecimal price
    
    OrdSide side
    
    OrdType orderType
    
    TimeInForce timeInForce
    /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
    Date expireTime = null
    /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>  */
    List<String> execInst = new ArrayList<ExecInstEnum>()
    /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
    String clientOrderIdFormatExchange
    /* The unique identifier of the order assigned by the exchange. */
    String exchangeOrderId
    /* Amount open */
    BigDecimal amountOpen
    /* Amount filled */
    BigDecimal amountFilled
    
    OrdStatus status
    /* Timestamped history of order status changes. */
    List<List<String>> timeOrder = new ArrayList<List<String>>()
    /* Error message */
    String errorMessage
}

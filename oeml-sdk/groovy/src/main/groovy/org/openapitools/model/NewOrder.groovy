package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.TimeInForce;

@Canonical
class NewOrder {
    /* Exchange name */
    String exchangeId
    /* Client unique identifier for the trade. */
    String clientOrderId
    /* The symbol of the order. */
    String symbolExchange
    /* The CoinAPI symbol of the order. */
    String symbolCoinapi
    /* Quoted decimal amount to purchase. */
    BigDecimal amountOrder
    /* Quoted decimal amount to spend per unit. */
    BigDecimal price
    /* Buy or Sell */
    String side
    /* The order type. */
    String orderType
    
    TimeInForce timeInForce
    /* Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
    Date expireTime = null
    /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>  */
    List<String> execInst = new ArrayList<ExecInstEnum>()
}

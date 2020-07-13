package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.OrdStatus;

@Canonical
class ExecutionReportAllOf {
    /* Hash client id */
    String clientOrderIdFormatExchange
    /* Exchange order id */
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

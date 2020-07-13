package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrderCancelSingleRequest {
    /* Exchange identifier. */
    String exchangeId
    /* The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
    String exchangeOrderId
    /* The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
    String clientOrderId
}

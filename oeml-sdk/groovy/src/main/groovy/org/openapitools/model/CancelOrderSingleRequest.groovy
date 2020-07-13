package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CancelOrderSingleRequest {
    /* Exchange identifier. */
    String exchangeId
    /* The unique identifier of the order assigned by the exchange. */
    String exchangeOrderId
    /* The unique identifier of the order assigned by the client. */
    String clientOrderId
}

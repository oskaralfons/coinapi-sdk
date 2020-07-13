package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BalanceData {
    /* Exchange currency code. */
    String symbolExchange
    /* CoinAPI currency code. */
    String symbolCoinapi
    /* Value of the current total currency balance on the exchange. */
    Float balance
    /* Value of the current available currency balance on the exchange that can be used as collateral. */
    Float available
    /* Value of the current locked currency balance by the exchange. */
    Float locked
    /* Source of the last modification.  */
    String updateOrigin
}

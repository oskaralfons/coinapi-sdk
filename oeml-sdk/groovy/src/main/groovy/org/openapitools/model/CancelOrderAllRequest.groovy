package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CancelOrderAllRequest {
    /* Exchange identifier from which active orders should be canceled. */
    String exchangeId
}

package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Severity;

@Canonical
class Message {
    /* Type of message. */
    String type
    
    Severity severity
    /* If message related exchange then identifier of this exchange. */
    String exchangeId
    /* Message text. */
    String message
}

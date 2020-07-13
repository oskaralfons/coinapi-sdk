package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.OrdersData;

@Canonical
class Orders {
    /* Constant value `snapshotOrders`. */
    String type
    /* Exchange identifier. */
    String exchangeId
    /* Orders array */
    List<OrdersData> data = new ArrayList<OrdersData>()
}

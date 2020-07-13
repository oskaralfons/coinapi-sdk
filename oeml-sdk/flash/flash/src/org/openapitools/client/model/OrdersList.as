package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.OrdersData;

    public class OrdersList implements ListWrapper {
        // This declaration below of _Orders_obj_class is to force flash compiler to include this class
        private var _orders_obj_class: org.openapitools.client.model.Orders = null;
        [XmlElements(name="orders", type="org.openapitools.client.model.Orders")]
        public var orders: Array = new Array();

        public function getList(): Array{
            return orders;
        }

}

}

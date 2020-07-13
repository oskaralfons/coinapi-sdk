package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.OrdStatus;
import org.openapitools.client.model.TimeInForce;

    public class OrdersDataList implements ListWrapper {
        // This declaration below of _Orders_data_obj_class is to force flash compiler to include this class
        private var _ordersData_obj_class: org.openapitools.client.model.OrdersData = null;
        [XmlElements(name="ordersData", type="org.openapitools.client.model.OrdersData")]
        public var ordersData: Array = new Array();

        public function getList(): Array{
            return ordersData;
        }

}

}

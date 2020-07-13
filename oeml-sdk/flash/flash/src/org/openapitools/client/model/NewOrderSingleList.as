package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.TimeInForce;

    public class NewOrderSingleList implements ListWrapper {
        // This declaration below of _NewOrderSingle_obj_class is to force flash compiler to include this class
        private var _newOrderSingle_obj_class: org.openapitools.client.model.NewOrderSingle = null;
        [XmlElements(name="newOrderSingle", type="org.openapitools.client.model.NewOrderSingle")]
        public var newOrderSingle: Array = new Array();

        public function getList(): Array{
            return newOrderSingle;
        }

}

}

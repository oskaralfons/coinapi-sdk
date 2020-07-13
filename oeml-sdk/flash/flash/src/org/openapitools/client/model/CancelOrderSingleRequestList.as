package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CancelOrderSingleRequestList implements ListWrapper {
        // This declaration below of _CancelOrderSingleRequest_obj_class is to force flash compiler to include this class
        private var _cancelOrderSingleRequest_obj_class: org.openapitools.client.model.CancelOrderSingleRequest = null;
        [XmlElements(name="cancelOrderSingleRequest", type="org.openapitools.client.model.CancelOrderSingleRequest")]
        public var cancelOrderSingleRequest: Array = new Array();

        public function getList(): Array{
            return cancelOrderSingleRequest;
        }

}

}

package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CancelOrderAllRequestList implements ListWrapper {
        // This declaration below of _CancelOrderAllRequest_obj_class is to force flash compiler to include this class
        private var _cancelOrderAllRequest_obj_class: org.openapitools.client.model.CancelOrderAllRequest = null;
        [XmlElements(name="cancelOrderAllRequest", type="org.openapitools.client.model.CancelOrderAllRequest")]
        public var cancelOrderAllRequest: Array = new Array();

        public function getList(): Array{
            return cancelOrderAllRequest;
        }

}

}

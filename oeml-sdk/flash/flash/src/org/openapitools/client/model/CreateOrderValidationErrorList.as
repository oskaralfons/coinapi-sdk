package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CreateOrderValidationErrorList implements ListWrapper {
        // This declaration below of _CreateOrderValidationError_obj_class is to force flash compiler to include this class
        private var _createOrderValidationError_obj_class: org.openapitools.client.model.CreateOrderValidationError = null;
        [XmlElements(name="createOrderValidationError", type="org.openapitools.client.model.CreateOrderValidationError")]
        public var createOrderValidationError: Array = new Array();

        public function getList(): Array{
            return createOrderValidationError;
        }

}

}

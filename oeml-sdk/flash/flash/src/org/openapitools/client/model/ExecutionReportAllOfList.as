package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.OrdStatus;

    public class ExecutionReportAllOfList implements ListWrapper {
        // This declaration below of _ExecutionReport_allOf_obj_class is to force flash compiler to include this class
        private var _executionReportAllOf_obj_class: org.openapitools.client.model.ExecutionReportAllOf = null;
        [XmlElements(name="executionReportAllOf", type="org.openapitools.client.model.ExecutionReportAllOf")]
        public var executionReportAllOf: Array = new Array();

        public function getList(): Array{
            return executionReportAllOf;
        }

}

}

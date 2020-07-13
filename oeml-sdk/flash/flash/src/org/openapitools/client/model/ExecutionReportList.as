package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ExecutionReportAllOf;
import org.openapitools.client.model.NewOrderSingle;
import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdStatus;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.TimeInForce;

    public class ExecutionReportList implements ListWrapper {
        // This declaration below of _ExecutionReport_obj_class is to force flash compiler to include this class
        private var _executionReport_obj_class: org.openapitools.client.model.ExecutionReport = null;
        [XmlElements(name="executionReport", type="org.openapitools.client.model.ExecutionReport")]
        public var executionReport: Array = new Array();

        public function getList(): Array{
            return executionReport;
        }

}

}

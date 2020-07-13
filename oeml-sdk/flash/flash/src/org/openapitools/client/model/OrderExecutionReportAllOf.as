package org.openapitools.client.model {

import org.openapitools.client.model.OrdStatus;

    [XmlRootNode(name="OrderExecutionReportAllOf")]
    public class OrderExecutionReportAllOf {
        /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
        [XmlElement(name="client_order_id_format_exchange")]
        public var clientOrderIdFormatExchange: String = null;
        /* The unique identifier of the order assigned by the exchange. */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* Amount open. */
        [XmlElement(name="amount_open")]
        public var amountOpen: Number = 0.0;
        /* Amount filled. */
        [XmlElement(name="amount_filled")]
        public var amountFilled: Number = 0.0;
                [XmlElement(name="status")]
        public var status: OrdStatus = NaN;
        /* Timestamped history of order status changes. */
        // This declaration below of _timeOrder_obj_class is to force flash compiler to include this class
        private var _timeOrder_obj_class: Array = null;
        [XmlElementWrapper(name="time_order")]
        [XmlElements(name="timeOrder", type="Array")]
                public var timeOrder: Array = new Array();
        /* Error message */
        [XmlElement(name="error_message")]
        public var errorMessage: String = null;

    public function toString(): String {
        var str: String = "OrderExecutionReportAllOf: ";
        str += " (clientOrderIdFormatExchange: " + clientOrderIdFormatExchange + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (amountOpen: " + amountOpen + ")";
        str += " (amountFilled: " + amountFilled + ")";
        str += " (status: " + status + ")";
        str += " (timeOrder: " + timeOrder + ")";
        str += " (errorMessage: " + errorMessage + ")";
        return str;
    }

}

}

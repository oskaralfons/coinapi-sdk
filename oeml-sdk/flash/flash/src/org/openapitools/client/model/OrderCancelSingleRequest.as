package org.openapitools.client.model {


    [XmlRootNode(name="OrderCancelSingleRequest")]
    public class OrderCancelSingleRequest {
        /* Exchange name */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Order Id */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* Client order Id */
        [XmlElement(name="client_order_id")]
        public var clientOrderId: String = null;

    public function toString(): String {
        var str: String = "OrderCancelSingleRequest: ";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (clientOrderId: " + clientOrderId + ")";
        return str;
    }

}

}

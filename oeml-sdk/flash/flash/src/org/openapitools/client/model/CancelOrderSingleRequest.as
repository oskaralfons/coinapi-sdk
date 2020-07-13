package org.openapitools.client.model {


    [XmlRootNode(name="CancelOrderSingleRequest")]
    public class CancelOrderSingleRequest {
        /* Exchange identifier. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* The unique identifier of the order assigned by the exchange. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. */
        [XmlElement(name="client_order_id")]
        public var clientOrderId: String = null;

    public function toString(): String {
        var str: String = "CancelOrderSingleRequest: ";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (clientOrderId: " + clientOrderId + ")";
        return str;
    }

}

}

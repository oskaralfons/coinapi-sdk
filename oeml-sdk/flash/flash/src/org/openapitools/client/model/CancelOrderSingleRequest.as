package org.openapitools.client.model {


    [XmlRootNode(name="CancelOrderSingleRequest")]
    public class CancelOrderSingleRequest {
        /* Exchange identifier. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* The unique identifier of the order assigned by the exchange. */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* The unique identifier of the order assigned by the client. */
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

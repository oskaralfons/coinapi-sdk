package org.openapitools.client.model {


    [XmlRootNode(name="CancelOrderAllRequest")]
    public class CancelOrderAllRequest {
        /* Exchange identifier from which active orders should be canceled. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;

    public function toString(): String {
        var str: String = "CancelOrderAllRequest: ";
        str += " (exchangeId: " + exchangeId + ")";
        return str;
    }

}

}

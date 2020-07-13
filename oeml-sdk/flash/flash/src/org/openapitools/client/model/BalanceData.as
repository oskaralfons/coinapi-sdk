package org.openapitools.client.model {


    [XmlRootNode(name="BalanceData")]
    public class BalanceData {
        /* Exchange identifier. */
        [XmlElement(name="id")]
        public var id: String = null;
        /* Exchange currency code. */
        [XmlElement(name="symbol_exchange")]
        public var symbolExchange: String = null;
        /* CoinAPI currency code. */
        [XmlElement(name="symbol_coinapi")]
        public var symbolCoinapi: String = null;
        /* Value of the current total currency balance on the exchange. */
        [XmlElement(name="balance")]
        public var balance: Number = 0.0;
        /* Value of the current available currency balance on the exchange that can be used as collateral. */
        [XmlElement(name="available")]
        public var available: Number = 0.0;
        /* Value of the current locked currency balance by the exchange. */
        [XmlElement(name="locked")]
        public var locked: Number = 0.0;
        /* Source of the last modification.  */
        [XmlElement(name="update_origin")]
        public var updateOrigin: String = null;

    public function toString(): String {
        var str: String = "BalanceData: ";
        str += " (id: " + id + ")";
        str += " (symbolExchange: " + symbolExchange + ")";
        str += " (symbolCoinapi: " + symbolCoinapi + ")";
        str += " (balance: " + balance + ")";
        str += " (available: " + available + ")";
        str += " (locked: " + locked + ")";
        str += " (updateOrigin: " + updateOrigin + ")";
        return str;
    }

}

}

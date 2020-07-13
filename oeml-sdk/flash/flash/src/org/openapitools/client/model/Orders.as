package org.openapitools.client.model {

import org.openapitools.client.model.OrdersData;

    [XmlRootNode(name="Orders")]
    public class Orders {
        /* Constant value &#x60;snapshotOrders&#x60;. */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Exchange identifier. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Orders array */
        // This declaration below of _data_obj_class is to force flash compiler to include this class
        private var _data_obj_class: Array = null;
        [XmlElementWrapper(name="data")]
        [XmlElements(name="data", type="Array")]
                public var data: Array = new Array();

    public function toString(): String {
        var str: String = "Orders: ";
        str += " (type: " + type + ")";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (data: " + data + ")";
        return str;
    }

}

}

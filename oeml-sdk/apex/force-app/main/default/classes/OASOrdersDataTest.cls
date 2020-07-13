@isTest
private class OASOrdersDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrdersData ordersData1 = OASOrdersData.getExample();
        OASOrdersData ordersData2 = ordersData1;
        OASOrdersData ordersData3 = new OASOrdersData();
        OASOrdersData ordersData4 = ordersData3;

        System.assert(ordersData1.equals(ordersData2));
        System.assert(ordersData2.equals(ordersData1));
        System.assert(ordersData1.equals(ordersData1));
        System.assert(ordersData3.equals(ordersData4));
        System.assert(ordersData4.equals(ordersData3));
        System.assert(ordersData3.equals(ordersData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrdersData ordersData1 = OASOrdersData.getExample();
        OASOrdersData ordersData2 = OASOrdersData.getExample();
        OASOrdersData ordersData3 = new OASOrdersData();
        OASOrdersData ordersData4 = new OASOrdersData();

        System.assert(ordersData1.equals(ordersData2));
        System.assert(ordersData2.equals(ordersData1));
        System.assert(ordersData3.equals(ordersData4));
        System.assert(ordersData4.equals(ordersData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrdersData ordersData1 = OASOrdersData.getExample();
        OASOrdersData ordersData2 = new OASOrdersData();

        System.assertEquals(false, ordersData1.equals('foo'));
        System.assertEquals(false, ordersData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrdersData ordersData1 = OASOrdersData.getExample();
        OASOrdersData ordersData2 = new OASOrdersData();
        OASOrdersData ordersData3;

        System.assertEquals(false, ordersData1.equals(ordersData3));
        System.assertEquals(false, ordersData2.equals(ordersData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrdersData ordersData1 = OASOrdersData.getExample();
        OASOrdersData ordersData2 = new OASOrdersData();

        System.assertEquals(ordersData1.hashCode(), ordersData1.hashCode());
        System.assertEquals(ordersData2.hashCode(), ordersData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrdersData ordersData1 = OASOrdersData.getExample();
        OASOrdersData ordersData2 = OASOrdersData.getExample();
        OASOrdersData ordersData3 = new OASOrdersData();
        OASOrdersData ordersData4 = new OASOrdersData();

        System.assert(ordersData1.equals(ordersData2));
        System.assert(ordersData3.equals(ordersData4));
        System.assertEquals(ordersData1.hashCode(), ordersData2.hashCode());
        System.assertEquals(ordersData3.hashCode(), ordersData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrdersData ordersData = new OASOrdersData();
        Map<String, String> propertyMappings = ordersData.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('clientOrderIdFormatExchange', propertyMappings.get('client_order_id_format_exchange'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('amountOpen', propertyMappings.get('amount_open'));
        System.assertEquals('amountFilled', propertyMappings.get('amount_filled'));
        System.assertEquals('timeOrder', propertyMappings.get('time_order'));
        System.assertEquals('errorMessage', propertyMappings.get('error_message'));
        System.assertEquals('clientOrderId', propertyMappings.get('client_order_id'));
        System.assertEquals('symbolExchange', propertyMappings.get('symbol_exchange'));
        System.assertEquals('symbolCoinapi', propertyMappings.get('symbol_coinapi'));
        System.assertEquals('amountOrder', propertyMappings.get('amount_order'));
        System.assertEquals('orderType', propertyMappings.get('order_type'));
        System.assertEquals('timeInForce', propertyMappings.get('time_in_force'));
        System.assertEquals('expireTime', propertyMappings.get('expire_time'));
        System.assertEquals('execInst', propertyMappings.get('exec_inst'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrdersData ordersData = new OASOrdersData();
        System.assertEquals(new List<List<String>>(), ordersData.timeOrder);
        System.assertEquals(new List<ExecInstEnum>(), ordersData.execInst);
        System.assertEquals(null, ordersData.exchangeId);
        System.assertEquals(null, ordersData.id);
        System.assertEquals(null, ordersData.clientOrderIdFormatExchange);
        System.assertEquals(null, ordersData.exchangeOrderId);
        System.assertEquals(null, ordersData.amountOpen);
        System.assertEquals(null, ordersData.amountFilled);
        System.assertEquals(null, ordersData.status);
        System.assertEquals(null, ordersData.errorMessage);
        System.assertEquals(null, ordersData.clientOrderId);
        System.assertEquals(null, ordersData.symbolExchange);
        System.assertEquals(null, ordersData.symbolCoinapi);
        System.assertEquals(null, ordersData.amountOrder);
        System.assertEquals(null, ordersData.price);
        System.assertEquals(null, ordersData.side);
        System.assertEquals(null, ordersData.orderType);
        System.assertEquals(null, ordersData.timeInForce);
        System.assertEquals(null, ordersData.expireTime);
    }
}

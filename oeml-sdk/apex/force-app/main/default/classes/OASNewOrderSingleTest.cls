@isTest
private class OASNewOrderSingleTest {
    @isTest
    private static void equalsSameInstance() {
        OASNewOrderSingle newOrderSingle1 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle2 = newOrderSingle1;
        OASNewOrderSingle newOrderSingle3 = new OASNewOrderSingle();
        OASNewOrderSingle newOrderSingle4 = newOrderSingle3;

        System.assert(newOrderSingle1.equals(newOrderSingle2));
        System.assert(newOrderSingle2.equals(newOrderSingle1));
        System.assert(newOrderSingle1.equals(newOrderSingle1));
        System.assert(newOrderSingle3.equals(newOrderSingle4));
        System.assert(newOrderSingle4.equals(newOrderSingle3));
        System.assert(newOrderSingle3.equals(newOrderSingle3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASNewOrderSingle newOrderSingle1 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle2 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle3 = new OASNewOrderSingle();
        OASNewOrderSingle newOrderSingle4 = new OASNewOrderSingle();

        System.assert(newOrderSingle1.equals(newOrderSingle2));
        System.assert(newOrderSingle2.equals(newOrderSingle1));
        System.assert(newOrderSingle3.equals(newOrderSingle4));
        System.assert(newOrderSingle4.equals(newOrderSingle3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASNewOrderSingle newOrderSingle1 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle2 = new OASNewOrderSingle();

        System.assertEquals(false, newOrderSingle1.equals('foo'));
        System.assertEquals(false, newOrderSingle2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASNewOrderSingle newOrderSingle1 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle2 = new OASNewOrderSingle();
        OASNewOrderSingle newOrderSingle3;

        System.assertEquals(false, newOrderSingle1.equals(newOrderSingle3));
        System.assertEquals(false, newOrderSingle2.equals(newOrderSingle3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASNewOrderSingle newOrderSingle1 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle2 = new OASNewOrderSingle();

        System.assertEquals(newOrderSingle1.hashCode(), newOrderSingle1.hashCode());
        System.assertEquals(newOrderSingle2.hashCode(), newOrderSingle2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASNewOrderSingle newOrderSingle1 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle2 = OASNewOrderSingle.getExample();
        OASNewOrderSingle newOrderSingle3 = new OASNewOrderSingle();
        OASNewOrderSingle newOrderSingle4 = new OASNewOrderSingle();

        System.assert(newOrderSingle1.equals(newOrderSingle2));
        System.assert(newOrderSingle3.equals(newOrderSingle4));
        System.assertEquals(newOrderSingle1.hashCode(), newOrderSingle2.hashCode());
        System.assertEquals(newOrderSingle3.hashCode(), newOrderSingle4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASNewOrderSingle newOrderSingle = new OASNewOrderSingle();
        Map<String, String> propertyMappings = newOrderSingle.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
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
        OASNewOrderSingle newOrderSingle = new OASNewOrderSingle();
        System.assertEquals(new List<ExecInstEnum>(), newOrderSingle.execInst);
        System.assertEquals(null, newOrderSingle.exchangeId);
        System.assertEquals(null, newOrderSingle.clientOrderId);
        System.assertEquals(null, newOrderSingle.symbolExchange);
        System.assertEquals(null, newOrderSingle.symbolCoinapi);
        System.assertEquals(null, newOrderSingle.amountOrder);
        System.assertEquals(null, newOrderSingle.price);
        System.assertEquals(null, newOrderSingle.side);
        System.assertEquals(null, newOrderSingle.orderType);
        System.assertEquals(null, newOrderSingle.timeInForce);
        System.assertEquals(null, newOrderSingle.expireTime);
    }
}

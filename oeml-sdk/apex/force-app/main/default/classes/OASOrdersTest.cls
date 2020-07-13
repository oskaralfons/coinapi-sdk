@isTest
private class OASOrdersTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrders orders1 = OASOrders.getExample();
        OASOrders orders2 = orders1;
        OASOrders orders3 = new OASOrders();
        OASOrders orders4 = orders3;

        System.assert(orders1.equals(orders2));
        System.assert(orders2.equals(orders1));
        System.assert(orders1.equals(orders1));
        System.assert(orders3.equals(orders4));
        System.assert(orders4.equals(orders3));
        System.assert(orders3.equals(orders3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrders orders1 = OASOrders.getExample();
        OASOrders orders2 = OASOrders.getExample();
        OASOrders orders3 = new OASOrders();
        OASOrders orders4 = new OASOrders();

        System.assert(orders1.equals(orders2));
        System.assert(orders2.equals(orders1));
        System.assert(orders3.equals(orders4));
        System.assert(orders4.equals(orders3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrders orders1 = OASOrders.getExample();
        OASOrders orders2 = new OASOrders();

        System.assertEquals(false, orders1.equals('foo'));
        System.assertEquals(false, orders2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrders orders1 = OASOrders.getExample();
        OASOrders orders2 = new OASOrders();
        OASOrders orders3;

        System.assertEquals(false, orders1.equals(orders3));
        System.assertEquals(false, orders2.equals(orders3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrders orders1 = OASOrders.getExample();
        OASOrders orders2 = new OASOrders();

        System.assertEquals(orders1.hashCode(), orders1.hashCode());
        System.assertEquals(orders2.hashCode(), orders2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrders orders1 = OASOrders.getExample();
        OASOrders orders2 = OASOrders.getExample();
        OASOrders orders3 = new OASOrders();
        OASOrders orders4 = new OASOrders();

        System.assert(orders1.equals(orders2));
        System.assert(orders3.equals(orders4));
        System.assertEquals(orders1.hashCode(), orders2.hashCode());
        System.assertEquals(orders3.hashCode(), orders4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrders orders = new OASOrders();
        Map<String, String> propertyMappings = orders.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrders orders = new OASOrders();
        System.assertEquals(new List<OASOrdersData>(), orders.data);
        System.assertEquals(null, orders.r_type);
        System.assertEquals(null, orders.exchangeId);
    }
}

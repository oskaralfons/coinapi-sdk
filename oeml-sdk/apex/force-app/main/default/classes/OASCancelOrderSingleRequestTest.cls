@isTest
private class OASCancelOrderSingleRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest1 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest2 = cancelOrderSingleRequest1;
        OASCancelOrderSingleRequest cancelOrderSingleRequest3 = new OASCancelOrderSingleRequest();
        OASCancelOrderSingleRequest cancelOrderSingleRequest4 = cancelOrderSingleRequest3;

        System.assert(cancelOrderSingleRequest1.equals(cancelOrderSingleRequest2));
        System.assert(cancelOrderSingleRequest2.equals(cancelOrderSingleRequest1));
        System.assert(cancelOrderSingleRequest1.equals(cancelOrderSingleRequest1));
        System.assert(cancelOrderSingleRequest3.equals(cancelOrderSingleRequest4));
        System.assert(cancelOrderSingleRequest4.equals(cancelOrderSingleRequest3));
        System.assert(cancelOrderSingleRequest3.equals(cancelOrderSingleRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest1 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest2 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest3 = new OASCancelOrderSingleRequest();
        OASCancelOrderSingleRequest cancelOrderSingleRequest4 = new OASCancelOrderSingleRequest();

        System.assert(cancelOrderSingleRequest1.equals(cancelOrderSingleRequest2));
        System.assert(cancelOrderSingleRequest2.equals(cancelOrderSingleRequest1));
        System.assert(cancelOrderSingleRequest3.equals(cancelOrderSingleRequest4));
        System.assert(cancelOrderSingleRequest4.equals(cancelOrderSingleRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest1 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest2 = new OASCancelOrderSingleRequest();

        System.assertEquals(false, cancelOrderSingleRequest1.equals('foo'));
        System.assertEquals(false, cancelOrderSingleRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest1 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest2 = new OASCancelOrderSingleRequest();
        OASCancelOrderSingleRequest cancelOrderSingleRequest3;

        System.assertEquals(false, cancelOrderSingleRequest1.equals(cancelOrderSingleRequest3));
        System.assertEquals(false, cancelOrderSingleRequest2.equals(cancelOrderSingleRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest1 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest2 = new OASCancelOrderSingleRequest();

        System.assertEquals(cancelOrderSingleRequest1.hashCode(), cancelOrderSingleRequest1.hashCode());
        System.assertEquals(cancelOrderSingleRequest2.hashCode(), cancelOrderSingleRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest1 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest2 = OASCancelOrderSingleRequest.getExample();
        OASCancelOrderSingleRequest cancelOrderSingleRequest3 = new OASCancelOrderSingleRequest();
        OASCancelOrderSingleRequest cancelOrderSingleRequest4 = new OASCancelOrderSingleRequest();

        System.assert(cancelOrderSingleRequest1.equals(cancelOrderSingleRequest2));
        System.assert(cancelOrderSingleRequest3.equals(cancelOrderSingleRequest4));
        System.assertEquals(cancelOrderSingleRequest1.hashCode(), cancelOrderSingleRequest2.hashCode());
        System.assertEquals(cancelOrderSingleRequest3.hashCode(), cancelOrderSingleRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCancelOrderSingleRequest cancelOrderSingleRequest = new OASCancelOrderSingleRequest();
        Map<String, String> propertyMappings = cancelOrderSingleRequest.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('clientOrderId', propertyMappings.get('client_order_id'));
    }
}

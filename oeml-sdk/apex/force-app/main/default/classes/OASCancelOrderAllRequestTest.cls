@isTest
private class OASCancelOrderAllRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCancelOrderAllRequest cancelOrderAllRequest1 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest2 = cancelOrderAllRequest1;
        OASCancelOrderAllRequest cancelOrderAllRequest3 = new OASCancelOrderAllRequest();
        OASCancelOrderAllRequest cancelOrderAllRequest4 = cancelOrderAllRequest3;

        System.assert(cancelOrderAllRequest1.equals(cancelOrderAllRequest2));
        System.assert(cancelOrderAllRequest2.equals(cancelOrderAllRequest1));
        System.assert(cancelOrderAllRequest1.equals(cancelOrderAllRequest1));
        System.assert(cancelOrderAllRequest3.equals(cancelOrderAllRequest4));
        System.assert(cancelOrderAllRequest4.equals(cancelOrderAllRequest3));
        System.assert(cancelOrderAllRequest3.equals(cancelOrderAllRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCancelOrderAllRequest cancelOrderAllRequest1 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest2 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest3 = new OASCancelOrderAllRequest();
        OASCancelOrderAllRequest cancelOrderAllRequest4 = new OASCancelOrderAllRequest();

        System.assert(cancelOrderAllRequest1.equals(cancelOrderAllRequest2));
        System.assert(cancelOrderAllRequest2.equals(cancelOrderAllRequest1));
        System.assert(cancelOrderAllRequest3.equals(cancelOrderAllRequest4));
        System.assert(cancelOrderAllRequest4.equals(cancelOrderAllRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCancelOrderAllRequest cancelOrderAllRequest1 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest2 = new OASCancelOrderAllRequest();

        System.assertEquals(false, cancelOrderAllRequest1.equals('foo'));
        System.assertEquals(false, cancelOrderAllRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCancelOrderAllRequest cancelOrderAllRequest1 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest2 = new OASCancelOrderAllRequest();
        OASCancelOrderAllRequest cancelOrderAllRequest3;

        System.assertEquals(false, cancelOrderAllRequest1.equals(cancelOrderAllRequest3));
        System.assertEquals(false, cancelOrderAllRequest2.equals(cancelOrderAllRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCancelOrderAllRequest cancelOrderAllRequest1 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest2 = new OASCancelOrderAllRequest();

        System.assertEquals(cancelOrderAllRequest1.hashCode(), cancelOrderAllRequest1.hashCode());
        System.assertEquals(cancelOrderAllRequest2.hashCode(), cancelOrderAllRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCancelOrderAllRequest cancelOrderAllRequest1 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest2 = OASCancelOrderAllRequest.getExample();
        OASCancelOrderAllRequest cancelOrderAllRequest3 = new OASCancelOrderAllRequest();
        OASCancelOrderAllRequest cancelOrderAllRequest4 = new OASCancelOrderAllRequest();

        System.assert(cancelOrderAllRequest1.equals(cancelOrderAllRequest2));
        System.assert(cancelOrderAllRequest3.equals(cancelOrderAllRequest4));
        System.assertEquals(cancelOrderAllRequest1.hashCode(), cancelOrderAllRequest2.hashCode());
        System.assertEquals(cancelOrderAllRequest3.hashCode(), cancelOrderAllRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCancelOrderAllRequest cancelOrderAllRequest = new OASCancelOrderAllRequest();
        Map<String, String> propertyMappings = cancelOrderAllRequest.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
    }
}

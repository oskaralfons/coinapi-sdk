@isTest
private class OASExecutionReportAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASExecutionReportAllOf executionReportAllOf1 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf2 = executionReportAllOf1;
        OASExecutionReportAllOf executionReportAllOf3 = new OASExecutionReportAllOf();
        OASExecutionReportAllOf executionReportAllOf4 = executionReportAllOf3;

        System.assert(executionReportAllOf1.equals(executionReportAllOf2));
        System.assert(executionReportAllOf2.equals(executionReportAllOf1));
        System.assert(executionReportAllOf1.equals(executionReportAllOf1));
        System.assert(executionReportAllOf3.equals(executionReportAllOf4));
        System.assert(executionReportAllOf4.equals(executionReportAllOf3));
        System.assert(executionReportAllOf3.equals(executionReportAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExecutionReportAllOf executionReportAllOf1 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf2 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf3 = new OASExecutionReportAllOf();
        OASExecutionReportAllOf executionReportAllOf4 = new OASExecutionReportAllOf();

        System.assert(executionReportAllOf1.equals(executionReportAllOf2));
        System.assert(executionReportAllOf2.equals(executionReportAllOf1));
        System.assert(executionReportAllOf3.equals(executionReportAllOf4));
        System.assert(executionReportAllOf4.equals(executionReportAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExecutionReportAllOf executionReportAllOf1 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf2 = new OASExecutionReportAllOf();

        System.assertEquals(false, executionReportAllOf1.equals('foo'));
        System.assertEquals(false, executionReportAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExecutionReportAllOf executionReportAllOf1 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf2 = new OASExecutionReportAllOf();
        OASExecutionReportAllOf executionReportAllOf3;

        System.assertEquals(false, executionReportAllOf1.equals(executionReportAllOf3));
        System.assertEquals(false, executionReportAllOf2.equals(executionReportAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExecutionReportAllOf executionReportAllOf1 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf2 = new OASExecutionReportAllOf();

        System.assertEquals(executionReportAllOf1.hashCode(), executionReportAllOf1.hashCode());
        System.assertEquals(executionReportAllOf2.hashCode(), executionReportAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExecutionReportAllOf executionReportAllOf1 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf2 = OASExecutionReportAllOf.getExample();
        OASExecutionReportAllOf executionReportAllOf3 = new OASExecutionReportAllOf();
        OASExecutionReportAllOf executionReportAllOf4 = new OASExecutionReportAllOf();

        System.assert(executionReportAllOf1.equals(executionReportAllOf2));
        System.assert(executionReportAllOf3.equals(executionReportAllOf4));
        System.assertEquals(executionReportAllOf1.hashCode(), executionReportAllOf2.hashCode());
        System.assertEquals(executionReportAllOf3.hashCode(), executionReportAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExecutionReportAllOf executionReportAllOf = new OASExecutionReportAllOf();
        Map<String, String> propertyMappings = executionReportAllOf.getPropertyMappings();
        System.assertEquals('clientOrderIdFormatExchange', propertyMappings.get('client_order_id_format_exchange'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('amountOpen', propertyMappings.get('amount_open'));
        System.assertEquals('amountFilled', propertyMappings.get('amount_filled'));
        System.assertEquals('timeOrder', propertyMappings.get('time_order'));
        System.assertEquals('errorMessage', propertyMappings.get('error_message'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExecutionReportAllOf executionReportAllOf = new OASExecutionReportAllOf();
        System.assertEquals(new List<List<String>>(), executionReportAllOf.timeOrder);
        System.assertEquals(null, executionReportAllOf.clientOrderIdFormatExchange);
        System.assertEquals(null, executionReportAllOf.exchangeOrderId);
        System.assertEquals(null, executionReportAllOf.amountOpen);
        System.assertEquals(null, executionReportAllOf.amountFilled);
        System.assertEquals(null, executionReportAllOf.status);
        System.assertEquals(null, executionReportAllOf.errorMessage);
    }
}

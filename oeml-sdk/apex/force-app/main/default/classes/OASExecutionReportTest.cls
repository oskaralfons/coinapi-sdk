@isTest
private class OASExecutionReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASExecutionReport executionReport1 = OASExecutionReport.getExample();
        OASExecutionReport executionReport2 = executionReport1;
        OASExecutionReport executionReport3 = new OASExecutionReport();
        OASExecutionReport executionReport4 = executionReport3;

        System.assert(executionReport1.equals(executionReport2));
        System.assert(executionReport2.equals(executionReport1));
        System.assert(executionReport1.equals(executionReport1));
        System.assert(executionReport3.equals(executionReport4));
        System.assert(executionReport4.equals(executionReport3));
        System.assert(executionReport3.equals(executionReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExecutionReport executionReport1 = OASExecutionReport.getExample();
        OASExecutionReport executionReport2 = OASExecutionReport.getExample();
        OASExecutionReport executionReport3 = new OASExecutionReport();
        OASExecutionReport executionReport4 = new OASExecutionReport();

        System.assert(executionReport1.equals(executionReport2));
        System.assert(executionReport2.equals(executionReport1));
        System.assert(executionReport3.equals(executionReport4));
        System.assert(executionReport4.equals(executionReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExecutionReport executionReport1 = OASExecutionReport.getExample();
        OASExecutionReport executionReport2 = new OASExecutionReport();

        System.assertEquals(false, executionReport1.equals('foo'));
        System.assertEquals(false, executionReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExecutionReport executionReport1 = OASExecutionReport.getExample();
        OASExecutionReport executionReport2 = new OASExecutionReport();
        OASExecutionReport executionReport3;

        System.assertEquals(false, executionReport1.equals(executionReport3));
        System.assertEquals(false, executionReport2.equals(executionReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExecutionReport executionReport1 = OASExecutionReport.getExample();
        OASExecutionReport executionReport2 = new OASExecutionReport();

        System.assertEquals(executionReport1.hashCode(), executionReport1.hashCode());
        System.assertEquals(executionReport2.hashCode(), executionReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExecutionReport executionReport1 = OASExecutionReport.getExample();
        OASExecutionReport executionReport2 = OASExecutionReport.getExample();
        OASExecutionReport executionReport3 = new OASExecutionReport();
        OASExecutionReport executionReport4 = new OASExecutionReport();

        System.assert(executionReport1.equals(executionReport2));
        System.assert(executionReport3.equals(executionReport4));
        System.assertEquals(executionReport1.hashCode(), executionReport2.hashCode());
        System.assertEquals(executionReport3.hashCode(), executionReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExecutionReport executionReport = new OASExecutionReport();
        Map<String, String> propertyMappings = executionReport.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('clientOrderId', propertyMappings.get('client_order_id'));
        System.assertEquals('symbolExchange', propertyMappings.get('symbol_exchange'));
        System.assertEquals('symbolCoinapi', propertyMappings.get('symbol_coinapi'));
        System.assertEquals('amountOrder', propertyMappings.get('amount_order'));
        System.assertEquals('orderType', propertyMappings.get('order_type'));
        System.assertEquals('timeInForce', propertyMappings.get('time_in_force'));
        System.assertEquals('expireTime', propertyMappings.get('expire_time'));
        System.assertEquals('execInst', propertyMappings.get('exec_inst'));
        System.assertEquals('clientOrderIdFormatExchange', propertyMappings.get('client_order_id_format_exchange'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('amountOpen', propertyMappings.get('amount_open'));
        System.assertEquals('amountFilled', propertyMappings.get('amount_filled'));
        System.assertEquals('timeOrder', propertyMappings.get('time_order'));
        System.assertEquals('errorMessage', propertyMappings.get('error_message'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExecutionReport executionReport = new OASExecutionReport();
        System.assertEquals(new List<ExecInstEnum>(), executionReport.execInst);
        System.assertEquals(new List<List<String>>(), executionReport.timeOrder);
        System.assertEquals(null, executionReport.exchangeId);
        System.assertEquals(null, executionReport.clientOrderId);
        System.assertEquals(null, executionReport.symbolExchange);
        System.assertEquals(null, executionReport.symbolCoinapi);
        System.assertEquals(null, executionReport.amountOrder);
        System.assertEquals(null, executionReport.price);
        System.assertEquals(null, executionReport.side);
        System.assertEquals(null, executionReport.orderType);
        System.assertEquals(null, executionReport.timeInForce);
        System.assertEquals(null, executionReport.expireTime);
        System.assertEquals(null, executionReport.clientOrderIdFormatExchange);
        System.assertEquals(null, executionReport.exchangeOrderId);
        System.assertEquals(null, executionReport.amountOpen);
        System.assertEquals(null, executionReport.amountFilled);
        System.assertEquals(null, executionReport.status);
        System.assertEquals(null, executionReport.errorMessage);
    }
}

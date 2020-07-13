@isTest
private class OASOrdersApiTest {
    /**
     * Cancel all orders
     *
     * This request cancels all open orders across all or single specified exchange.
     */
    @isTest
    private static void v1OrdersCancelAllPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOrderCancelAllRequest' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASMessage response;
        OASMessage expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASMessage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMessage.getExample();
        response = (OASMessage) api.v1OrdersCancelAllPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel order
     *
     * This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
     */
    @isTest
    private static void v1OrdersCancelPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOrderCancelSingleRequest' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASExecutionReport response;
        OASExecutionReport expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASExecutionReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASExecutionReport.getExample();
        response = (OASExecutionReport) api.v1OrdersCancelPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get all orders
     *
     * Get all current open orders across all or single specified exchange.
     */
    @isTest
    private static void v1OrdersGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => KRAKEN
        };

        OASClient client;
        OASOrdersApi api;
        OASOrders response;
        OASOrders expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASOrders.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrders.getExample();
        response = (OASOrders) api.v1OrdersGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create new order
     *
     * This request creating new order for the specific exchange.
     */
    @isTest
    private static void v1OrdersPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSNewOrder' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASExecutionReport response;
        OASExecutionReport expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASExecutionReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASExecutionReport.getExample();
        response = (OASExecutionReport) api.v1OrdersPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get order status
     *
     * Get the current order status for the specified order. The requested order can no longer be active.
     */
    @isTest
    private static void v1OrdersStatusClientOrderIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'clientOrderId' => 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b
        };

        OASClient client;
        OASOrdersApi api;
        OASExecutionReport response;
        OASExecutionReport expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASExecutionReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASExecutionReport.getExample();
        response = (OASExecutionReport) api.v1OrdersStatusClientOrderIdGet(params);
        System.assertEquals(expectedResponse, response);
    }
}
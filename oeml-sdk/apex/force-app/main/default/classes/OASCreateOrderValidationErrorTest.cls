@isTest
private class OASCreateOrderValidationErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateOrderValidationError createOrderValidationError1 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError2 = createOrderValidationError1;
        OASCreateOrderValidationError createOrderValidationError3 = new OASCreateOrderValidationError();
        OASCreateOrderValidationError createOrderValidationError4 = createOrderValidationError3;

        System.assert(createOrderValidationError1.equals(createOrderValidationError2));
        System.assert(createOrderValidationError2.equals(createOrderValidationError1));
        System.assert(createOrderValidationError1.equals(createOrderValidationError1));
        System.assert(createOrderValidationError3.equals(createOrderValidationError4));
        System.assert(createOrderValidationError4.equals(createOrderValidationError3));
        System.assert(createOrderValidationError3.equals(createOrderValidationError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateOrderValidationError createOrderValidationError1 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError2 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError3 = new OASCreateOrderValidationError();
        OASCreateOrderValidationError createOrderValidationError4 = new OASCreateOrderValidationError();

        System.assert(createOrderValidationError1.equals(createOrderValidationError2));
        System.assert(createOrderValidationError2.equals(createOrderValidationError1));
        System.assert(createOrderValidationError3.equals(createOrderValidationError4));
        System.assert(createOrderValidationError4.equals(createOrderValidationError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateOrderValidationError createOrderValidationError1 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError2 = new OASCreateOrderValidationError();

        System.assertEquals(false, createOrderValidationError1.equals('foo'));
        System.assertEquals(false, createOrderValidationError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateOrderValidationError createOrderValidationError1 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError2 = new OASCreateOrderValidationError();
        OASCreateOrderValidationError createOrderValidationError3;

        System.assertEquals(false, createOrderValidationError1.equals(createOrderValidationError3));
        System.assertEquals(false, createOrderValidationError2.equals(createOrderValidationError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateOrderValidationError createOrderValidationError1 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError2 = new OASCreateOrderValidationError();

        System.assertEquals(createOrderValidationError1.hashCode(), createOrderValidationError1.hashCode());
        System.assertEquals(createOrderValidationError2.hashCode(), createOrderValidationError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateOrderValidationError createOrderValidationError1 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError2 = OASCreateOrderValidationError.getExample();
        OASCreateOrderValidationError createOrderValidationError3 = new OASCreateOrderValidationError();
        OASCreateOrderValidationError createOrderValidationError4 = new OASCreateOrderValidationError();

        System.assert(createOrderValidationError1.equals(createOrderValidationError2));
        System.assert(createOrderValidationError3.equals(createOrderValidationError4));
        System.assertEquals(createOrderValidationError1.hashCode(), createOrderValidationError2.hashCode());
        System.assertEquals(createOrderValidationError3.hashCode(), createOrderValidationError4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateOrderValidationError createOrderValidationError = new OASCreateOrderValidationError();
        Map<String, String> propertyMappings = createOrderValidationError.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}

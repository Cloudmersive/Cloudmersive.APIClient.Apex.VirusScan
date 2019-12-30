@isTest
private class SwagWebsiteScanRequestTest {
    @isTest
    private static void equalsSameInstance() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = websiteScanRequest1;
        SwagWebsiteScanRequest websiteScanRequest3 = new SwagWebsiteScanRequest();
        SwagWebsiteScanRequest websiteScanRequest4 = websiteScanRequest3;

        System.assert(websiteScanRequest1.equals(websiteScanRequest2));
        System.assert(websiteScanRequest2.equals(websiteScanRequest1));
        System.assert(websiteScanRequest1.equals(websiteScanRequest1));
        System.assert(websiteScanRequest3.equals(websiteScanRequest4));
        System.assert(websiteScanRequest4.equals(websiteScanRequest3));
        System.assert(websiteScanRequest3.equals(websiteScanRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest3 = new SwagWebsiteScanRequest();
        SwagWebsiteScanRequest websiteScanRequest4 = new SwagWebsiteScanRequest();

        System.assert(websiteScanRequest1.equals(websiteScanRequest2));
        System.assert(websiteScanRequest2.equals(websiteScanRequest1));
        System.assert(websiteScanRequest3.equals(websiteScanRequest4));
        System.assert(websiteScanRequest4.equals(websiteScanRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = new SwagWebsiteScanRequest();

        System.assertEquals(false, websiteScanRequest1.equals(websiteScanRequest2));
        System.assertEquals(false, websiteScanRequest2.equals(websiteScanRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = new SwagWebsiteScanRequest();

        System.assertEquals(false, websiteScanRequest1.equals('foo'));
        System.assertEquals(false, websiteScanRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = new SwagWebsiteScanRequest();
        SwagWebsiteScanRequest websiteScanRequest3;

        System.assertEquals(false, websiteScanRequest1.equals(websiteScanRequest3));
        System.assertEquals(false, websiteScanRequest2.equals(websiteScanRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = new SwagWebsiteScanRequest();

        System.assertEquals(websiteScanRequest1.hashCode(), websiteScanRequest1.hashCode());
        System.assertEquals(websiteScanRequest2.hashCode(), websiteScanRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagWebsiteScanRequest websiteScanRequest1 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest2 = SwagWebsiteScanRequest.getExample();
        SwagWebsiteScanRequest websiteScanRequest3 = new SwagWebsiteScanRequest();
        SwagWebsiteScanRequest websiteScanRequest4 = new SwagWebsiteScanRequest();

        System.assert(websiteScanRequest1.equals(websiteScanRequest2));
        System.assert(websiteScanRequest3.equals(websiteScanRequest4));
        System.assertEquals(websiteScanRequest1.hashCode(), websiteScanRequest2.hashCode());
        System.assertEquals(websiteScanRequest3.hashCode(), websiteScanRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagWebsiteScanRequest websiteScanRequest = new SwagWebsiteScanRequest();
        Map<String, String> propertyMappings = websiteScanRequest.getPropertyMappings();
        System.assertEquals('url', propertyMappings.get('Url'));
    }
}

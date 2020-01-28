@isTest
private class SwagWebsiteScanResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = websiteScanResult1;
        SwagWebsiteScanResult websiteScanResult3 = new SwagWebsiteScanResult();
        SwagWebsiteScanResult websiteScanResult4 = websiteScanResult3;

        System.assert(websiteScanResult1.equals(websiteScanResult2));
        System.assert(websiteScanResult2.equals(websiteScanResult1));
        System.assert(websiteScanResult1.equals(websiteScanResult1));
        System.assert(websiteScanResult3.equals(websiteScanResult4));
        System.assert(websiteScanResult4.equals(websiteScanResult3));
        System.assert(websiteScanResult3.equals(websiteScanResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult3 = new SwagWebsiteScanResult();
        SwagWebsiteScanResult websiteScanResult4 = new SwagWebsiteScanResult();

        System.assert(websiteScanResult1.equals(websiteScanResult2));
        System.assert(websiteScanResult2.equals(websiteScanResult1));
        System.assert(websiteScanResult3.equals(websiteScanResult4));
        System.assert(websiteScanResult4.equals(websiteScanResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = new SwagWebsiteScanResult();

        System.assertEquals(false, websiteScanResult1.equals(websiteScanResult2));
        System.assertEquals(false, websiteScanResult2.equals(websiteScanResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = new SwagWebsiteScanResult();

        System.assertEquals(false, websiteScanResult1.equals('foo'));
        System.assertEquals(false, websiteScanResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = new SwagWebsiteScanResult();
        SwagWebsiteScanResult websiteScanResult3;

        System.assertEquals(false, websiteScanResult1.equals(websiteScanResult3));
        System.assertEquals(false, websiteScanResult2.equals(websiteScanResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = new SwagWebsiteScanResult();

        System.assertEquals(websiteScanResult1.hashCode(), websiteScanResult1.hashCode());
        System.assertEquals(websiteScanResult2.hashCode(), websiteScanResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagWebsiteScanResult websiteScanResult1 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult2 = SwagWebsiteScanResult.getExample();
        SwagWebsiteScanResult websiteScanResult3 = new SwagWebsiteScanResult();
        SwagWebsiteScanResult websiteScanResult4 = new SwagWebsiteScanResult();

        System.assert(websiteScanResult1.equals(websiteScanResult2));
        System.assert(websiteScanResult3.equals(websiteScanResult4));
        System.assertEquals(websiteScanResult1.hashCode(), websiteScanResult2.hashCode());
        System.assertEquals(websiteScanResult3.hashCode(), websiteScanResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagWebsiteScanResult websiteScanResult = new SwagWebsiteScanResult();
        Map<String, String> propertyMappings = websiteScanResult.getPropertyMappings();
        System.assertEquals('cleanResult', propertyMappings.get('CleanResult'));
        System.assertEquals('websiteThreatType', propertyMappings.get('WebsiteThreatType'));
        System.assertEquals('foundViruses', propertyMappings.get('FoundViruses'));
        System.assertEquals('websiteHttpResponseCode', propertyMappings.get('WebsiteHttpResponseCode'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagWebsiteScanResult websiteScanResult = new SwagWebsiteScanResult();
        System.assertEquals(new List<SwagVirusFound>(), websiteScanResult.foundViruses);
        System.assertEquals(null, websiteScanResult.cleanResult);
        System.assertEquals(null, websiteScanResult.websiteThreatType);
        System.assertEquals(null, websiteScanResult.websiteHttpResponseCode);
    }
}

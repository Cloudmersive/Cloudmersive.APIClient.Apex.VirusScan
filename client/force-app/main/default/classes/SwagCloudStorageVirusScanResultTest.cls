@isTest
private class SwagCloudStorageVirusScanResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = cloudStorageVirusScanResult1;
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult3 = new SwagCloudStorageVirusScanResult();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult4 = cloudStorageVirusScanResult3;

        System.assert(cloudStorageVirusScanResult1.equals(cloudStorageVirusScanResult2));
        System.assert(cloudStorageVirusScanResult2.equals(cloudStorageVirusScanResult1));
        System.assert(cloudStorageVirusScanResult1.equals(cloudStorageVirusScanResult1));
        System.assert(cloudStorageVirusScanResult3.equals(cloudStorageVirusScanResult4));
        System.assert(cloudStorageVirusScanResult4.equals(cloudStorageVirusScanResult3));
        System.assert(cloudStorageVirusScanResult3.equals(cloudStorageVirusScanResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult3 = new SwagCloudStorageVirusScanResult();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult4 = new SwagCloudStorageVirusScanResult();

        System.assert(cloudStorageVirusScanResult1.equals(cloudStorageVirusScanResult2));
        System.assert(cloudStorageVirusScanResult2.equals(cloudStorageVirusScanResult1));
        System.assert(cloudStorageVirusScanResult3.equals(cloudStorageVirusScanResult4));
        System.assert(cloudStorageVirusScanResult4.equals(cloudStorageVirusScanResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = new SwagCloudStorageVirusScanResult();

        System.assertEquals(false, cloudStorageVirusScanResult1.equals(cloudStorageVirusScanResult2));
        System.assertEquals(false, cloudStorageVirusScanResult2.equals(cloudStorageVirusScanResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = new SwagCloudStorageVirusScanResult();

        System.assertEquals(false, cloudStorageVirusScanResult1.equals('foo'));
        System.assertEquals(false, cloudStorageVirusScanResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = new SwagCloudStorageVirusScanResult();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult3;

        System.assertEquals(false, cloudStorageVirusScanResult1.equals(cloudStorageVirusScanResult3));
        System.assertEquals(false, cloudStorageVirusScanResult2.equals(cloudStorageVirusScanResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = new SwagCloudStorageVirusScanResult();

        System.assertEquals(cloudStorageVirusScanResult1.hashCode(), cloudStorageVirusScanResult1.hashCode());
        System.assertEquals(cloudStorageVirusScanResult2.hashCode(), cloudStorageVirusScanResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult1 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult2 = SwagCloudStorageVirusScanResult.getExample();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult3 = new SwagCloudStorageVirusScanResult();
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult4 = new SwagCloudStorageVirusScanResult();

        System.assert(cloudStorageVirusScanResult1.equals(cloudStorageVirusScanResult2));
        System.assert(cloudStorageVirusScanResult3.equals(cloudStorageVirusScanResult4));
        System.assertEquals(cloudStorageVirusScanResult1.hashCode(), cloudStorageVirusScanResult2.hashCode());
        System.assertEquals(cloudStorageVirusScanResult3.hashCode(), cloudStorageVirusScanResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult = new SwagCloudStorageVirusScanResult();
        Map<String, String> propertyMappings = cloudStorageVirusScanResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('cleanResult', propertyMappings.get('CleanResult'));
        System.assertEquals('foundViruses', propertyMappings.get('FoundViruses'));
        System.assertEquals('errorDetailedDescription', propertyMappings.get('ErrorDetailedDescription'));
        System.assertEquals('fileSize', propertyMappings.get('FileSize'));
        System.assertEquals('containsContentModerationRejection', propertyMappings.get('ContainsContentModerationRejection'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagCloudStorageVirusScanResult cloudStorageVirusScanResult = new SwagCloudStorageVirusScanResult();
        System.assertEquals(new List<SwagCloudStorageVirusFound>(), cloudStorageVirusScanResult.foundViruses);
        System.assertEquals(null, cloudStorageVirusScanResult.successful);
        System.assertEquals(null, cloudStorageVirusScanResult.cleanResult);
        System.assertEquals(null, cloudStorageVirusScanResult.errorDetailedDescription);
        System.assertEquals(null, cloudStorageVirusScanResult.fileSize);
        System.assertEquals(null, cloudStorageVirusScanResult.containsContentModerationRejection);
    }
}

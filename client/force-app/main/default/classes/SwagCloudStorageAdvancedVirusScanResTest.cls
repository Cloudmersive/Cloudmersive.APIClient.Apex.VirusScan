@isTest
private class SwagCloudStorageAdvancedVirusScanResTest {
    @isTest
    private static void equalsSameInstance() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = cloudStorageAdvancedVirusScanResult1;
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult3 = new SwagCloudStorageAdvancedVirusScanRes();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult4 = cloudStorageAdvancedVirusScanResult3;

        System.assert(cloudStorageAdvancedVirusScanResult1.equals(cloudStorageAdvancedVirusScanResult2));
        System.assert(cloudStorageAdvancedVirusScanResult2.equals(cloudStorageAdvancedVirusScanResult1));
        System.assert(cloudStorageAdvancedVirusScanResult1.equals(cloudStorageAdvancedVirusScanResult1));
        System.assert(cloudStorageAdvancedVirusScanResult3.equals(cloudStorageAdvancedVirusScanResult4));
        System.assert(cloudStorageAdvancedVirusScanResult4.equals(cloudStorageAdvancedVirusScanResult3));
        System.assert(cloudStorageAdvancedVirusScanResult3.equals(cloudStorageAdvancedVirusScanResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult3 = new SwagCloudStorageAdvancedVirusScanRes();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult4 = new SwagCloudStorageAdvancedVirusScanRes();

        System.assert(cloudStorageAdvancedVirusScanResult1.equals(cloudStorageAdvancedVirusScanResult2));
        System.assert(cloudStorageAdvancedVirusScanResult2.equals(cloudStorageAdvancedVirusScanResult1));
        System.assert(cloudStorageAdvancedVirusScanResult3.equals(cloudStorageAdvancedVirusScanResult4));
        System.assert(cloudStorageAdvancedVirusScanResult4.equals(cloudStorageAdvancedVirusScanResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = new SwagCloudStorageAdvancedVirusScanRes();

        System.assertEquals(false, cloudStorageAdvancedVirusScanResult1.equals(cloudStorageAdvancedVirusScanResult2));
        System.assertEquals(false, cloudStorageAdvancedVirusScanResult2.equals(cloudStorageAdvancedVirusScanResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = new SwagCloudStorageAdvancedVirusScanRes();

        System.assertEquals(false, cloudStorageAdvancedVirusScanResult1.equals('foo'));
        System.assertEquals(false, cloudStorageAdvancedVirusScanResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = new SwagCloudStorageAdvancedVirusScanRes();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult3;

        System.assertEquals(false, cloudStorageAdvancedVirusScanResult1.equals(cloudStorageAdvancedVirusScanResult3));
        System.assertEquals(false, cloudStorageAdvancedVirusScanResult2.equals(cloudStorageAdvancedVirusScanResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = new SwagCloudStorageAdvancedVirusScanRes();

        System.assertEquals(cloudStorageAdvancedVirusScanResult1.hashCode(), cloudStorageAdvancedVirusScanResult1.hashCode());
        System.assertEquals(cloudStorageAdvancedVirusScanResult2.hashCode(), cloudStorageAdvancedVirusScanResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult1 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult2 = SwagCloudStorageAdvancedVirusScanRes.getExample();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult3 = new SwagCloudStorageAdvancedVirusScanRes();
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult4 = new SwagCloudStorageAdvancedVirusScanRes();

        System.assert(cloudStorageAdvancedVirusScanResult1.equals(cloudStorageAdvancedVirusScanResult2));
        System.assert(cloudStorageAdvancedVirusScanResult3.equals(cloudStorageAdvancedVirusScanResult4));
        System.assertEquals(cloudStorageAdvancedVirusScanResult1.hashCode(), cloudStorageAdvancedVirusScanResult2.hashCode());
        System.assertEquals(cloudStorageAdvancedVirusScanResult3.hashCode(), cloudStorageAdvancedVirusScanResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult = new SwagCloudStorageAdvancedVirusScanRes();
        Map<String, String> propertyMappings = cloudStorageAdvancedVirusScanResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('cleanResult', propertyMappings.get('CleanResult'));
        System.assertEquals('containsExecutable', propertyMappings.get('ContainsExecutable'));
        System.assertEquals('containsInvalidFile', propertyMappings.get('ContainsInvalidFile'));
        System.assertEquals('containsScript', propertyMappings.get('ContainsScript'));
        System.assertEquals('containsPasswordProtectedFile', propertyMappings.get('ContainsPasswordProtectedFile'));
        System.assertEquals('containsRestrictedFileFormat', propertyMappings.get('ContainsRestrictedFileFormat'));
        System.assertEquals('containsMacros', propertyMappings.get('ContainsMacros'));
        System.assertEquals('verifiedFileFormat', propertyMappings.get('VerifiedFileFormat'));
        System.assertEquals('foundViruses', propertyMappings.get('FoundViruses'));
        System.assertEquals('errorDetailedDescription', propertyMappings.get('ErrorDetailedDescription'));
        System.assertEquals('fileSize', propertyMappings.get('FileSize'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagCloudStorageAdvancedVirusScanRes cloudStorageAdvancedVirusScanResult = new SwagCloudStorageAdvancedVirusScanRes();
        System.assertEquals(new List<SwagCloudStorageVirusFound>(), cloudStorageAdvancedVirusScanResult.foundViruses);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.successful);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.cleanResult);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.containsExecutable);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.containsInvalidFile);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.containsScript);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.containsPasswordProtectedFile);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.containsRestrictedFileFormat);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.containsMacros);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.verifiedFileFormat);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.errorDetailedDescription);
        System.assertEquals(null, cloudStorageAdvancedVirusScanResult.fileSize);
    }
}

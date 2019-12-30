@isTest
private class SwagVirusScanAdvancedResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = virusScanAdvancedResult1;
        SwagVirusScanAdvancedResult virusScanAdvancedResult3 = new SwagVirusScanAdvancedResult();
        SwagVirusScanAdvancedResult virusScanAdvancedResult4 = virusScanAdvancedResult3;

        System.assert(virusScanAdvancedResult1.equals(virusScanAdvancedResult2));
        System.assert(virusScanAdvancedResult2.equals(virusScanAdvancedResult1));
        System.assert(virusScanAdvancedResult1.equals(virusScanAdvancedResult1));
        System.assert(virusScanAdvancedResult3.equals(virusScanAdvancedResult4));
        System.assert(virusScanAdvancedResult4.equals(virusScanAdvancedResult3));
        System.assert(virusScanAdvancedResult3.equals(virusScanAdvancedResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult3 = new SwagVirusScanAdvancedResult();
        SwagVirusScanAdvancedResult virusScanAdvancedResult4 = new SwagVirusScanAdvancedResult();

        System.assert(virusScanAdvancedResult1.equals(virusScanAdvancedResult2));
        System.assert(virusScanAdvancedResult2.equals(virusScanAdvancedResult1));
        System.assert(virusScanAdvancedResult3.equals(virusScanAdvancedResult4));
        System.assert(virusScanAdvancedResult4.equals(virusScanAdvancedResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = new SwagVirusScanAdvancedResult();

        System.assertEquals(false, virusScanAdvancedResult1.equals(virusScanAdvancedResult2));
        System.assertEquals(false, virusScanAdvancedResult2.equals(virusScanAdvancedResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = new SwagVirusScanAdvancedResult();

        System.assertEquals(false, virusScanAdvancedResult1.equals('foo'));
        System.assertEquals(false, virusScanAdvancedResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = new SwagVirusScanAdvancedResult();
        SwagVirusScanAdvancedResult virusScanAdvancedResult3;

        System.assertEquals(false, virusScanAdvancedResult1.equals(virusScanAdvancedResult3));
        System.assertEquals(false, virusScanAdvancedResult2.equals(virusScanAdvancedResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = new SwagVirusScanAdvancedResult();

        System.assertEquals(virusScanAdvancedResult1.hashCode(), virusScanAdvancedResult1.hashCode());
        System.assertEquals(virusScanAdvancedResult2.hashCode(), virusScanAdvancedResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult1 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult2 = SwagVirusScanAdvancedResult.getExample();
        SwagVirusScanAdvancedResult virusScanAdvancedResult3 = new SwagVirusScanAdvancedResult();
        SwagVirusScanAdvancedResult virusScanAdvancedResult4 = new SwagVirusScanAdvancedResult();

        System.assert(virusScanAdvancedResult1.equals(virusScanAdvancedResult2));
        System.assert(virusScanAdvancedResult3.equals(virusScanAdvancedResult4));
        System.assertEquals(virusScanAdvancedResult1.hashCode(), virusScanAdvancedResult2.hashCode());
        System.assertEquals(virusScanAdvancedResult3.hashCode(), virusScanAdvancedResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult = new SwagVirusScanAdvancedResult();
        Map<String, String> propertyMappings = virusScanAdvancedResult.getPropertyMappings();
        System.assertEquals('cleanResult', propertyMappings.get('CleanResult'));
        System.assertEquals('containsExecutable', propertyMappings.get('ContainsExecutable'));
        System.assertEquals('containsInvalidFile', propertyMappings.get('ContainsInvalidFile'));
        System.assertEquals('containsScript', propertyMappings.get('ContainsScript'));
        System.assertEquals('containsRestrictedFileFormat', propertyMappings.get('ContainsRestrictedFileFormat'));
        System.assertEquals('verifiedFileFormat', propertyMappings.get('VerifiedFileFormat'));
        System.assertEquals('foundViruses', propertyMappings.get('FoundViruses'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagVirusScanAdvancedResult virusScanAdvancedResult = new SwagVirusScanAdvancedResult();
        System.assertEquals(new List<SwagVirusFound>(), virusScanAdvancedResult.foundViruses);
        System.assertEquals(null, virusScanAdvancedResult.cleanResult);
        System.assertEquals(null, virusScanAdvancedResult.containsExecutable);
        System.assertEquals(null, virusScanAdvancedResult.containsInvalidFile);
        System.assertEquals(null, virusScanAdvancedResult.containsScript);
        System.assertEquals(null, virusScanAdvancedResult.containsRestrictedFileFormat);
        System.assertEquals(null, virusScanAdvancedResult.verifiedFileFormat);
    }
}

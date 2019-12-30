@isTest
private class SwagVirusScanResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = virusScanResult1;
        SwagVirusScanResult virusScanResult3 = new SwagVirusScanResult();
        SwagVirusScanResult virusScanResult4 = virusScanResult3;

        System.assert(virusScanResult1.equals(virusScanResult2));
        System.assert(virusScanResult2.equals(virusScanResult1));
        System.assert(virusScanResult1.equals(virusScanResult1));
        System.assert(virusScanResult3.equals(virusScanResult4));
        System.assert(virusScanResult4.equals(virusScanResult3));
        System.assert(virusScanResult3.equals(virusScanResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult3 = new SwagVirusScanResult();
        SwagVirusScanResult virusScanResult4 = new SwagVirusScanResult();

        System.assert(virusScanResult1.equals(virusScanResult2));
        System.assert(virusScanResult2.equals(virusScanResult1));
        System.assert(virusScanResult3.equals(virusScanResult4));
        System.assert(virusScanResult4.equals(virusScanResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = new SwagVirusScanResult();

        System.assertEquals(false, virusScanResult1.equals(virusScanResult2));
        System.assertEquals(false, virusScanResult2.equals(virusScanResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = new SwagVirusScanResult();

        System.assertEquals(false, virusScanResult1.equals('foo'));
        System.assertEquals(false, virusScanResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = new SwagVirusScanResult();
        SwagVirusScanResult virusScanResult3;

        System.assertEquals(false, virusScanResult1.equals(virusScanResult3));
        System.assertEquals(false, virusScanResult2.equals(virusScanResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = new SwagVirusScanResult();

        System.assertEquals(virusScanResult1.hashCode(), virusScanResult1.hashCode());
        System.assertEquals(virusScanResult2.hashCode(), virusScanResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagVirusScanResult virusScanResult1 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult2 = SwagVirusScanResult.getExample();
        SwagVirusScanResult virusScanResult3 = new SwagVirusScanResult();
        SwagVirusScanResult virusScanResult4 = new SwagVirusScanResult();

        System.assert(virusScanResult1.equals(virusScanResult2));
        System.assert(virusScanResult3.equals(virusScanResult4));
        System.assertEquals(virusScanResult1.hashCode(), virusScanResult2.hashCode());
        System.assertEquals(virusScanResult3.hashCode(), virusScanResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagVirusScanResult virusScanResult = new SwagVirusScanResult();
        Map<String, String> propertyMappings = virusScanResult.getPropertyMappings();
        System.assertEquals('cleanResult', propertyMappings.get('CleanResult'));
        System.assertEquals('foundViruses', propertyMappings.get('FoundViruses'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagVirusScanResult virusScanResult = new SwagVirusScanResult();
        System.assertEquals(new List<SwagVirusFound>(), virusScanResult.foundViruses);
        System.assertEquals(null, virusScanResult.cleanResult);
    }
}

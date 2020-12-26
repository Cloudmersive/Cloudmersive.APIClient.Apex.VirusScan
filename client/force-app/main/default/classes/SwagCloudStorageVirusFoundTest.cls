@isTest
private class SwagCloudStorageVirusFoundTest {
    @isTest
    private static void equalsSameInstance() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = cloudStorageVirusFound1;
        SwagCloudStorageVirusFound cloudStorageVirusFound3 = new SwagCloudStorageVirusFound();
        SwagCloudStorageVirusFound cloudStorageVirusFound4 = cloudStorageVirusFound3;

        System.assert(cloudStorageVirusFound1.equals(cloudStorageVirusFound2));
        System.assert(cloudStorageVirusFound2.equals(cloudStorageVirusFound1));
        System.assert(cloudStorageVirusFound1.equals(cloudStorageVirusFound1));
        System.assert(cloudStorageVirusFound3.equals(cloudStorageVirusFound4));
        System.assert(cloudStorageVirusFound4.equals(cloudStorageVirusFound3));
        System.assert(cloudStorageVirusFound3.equals(cloudStorageVirusFound3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound3 = new SwagCloudStorageVirusFound();
        SwagCloudStorageVirusFound cloudStorageVirusFound4 = new SwagCloudStorageVirusFound();

        System.assert(cloudStorageVirusFound1.equals(cloudStorageVirusFound2));
        System.assert(cloudStorageVirusFound2.equals(cloudStorageVirusFound1));
        System.assert(cloudStorageVirusFound3.equals(cloudStorageVirusFound4));
        System.assert(cloudStorageVirusFound4.equals(cloudStorageVirusFound3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = new SwagCloudStorageVirusFound();

        System.assertEquals(false, cloudStorageVirusFound1.equals(cloudStorageVirusFound2));
        System.assertEquals(false, cloudStorageVirusFound2.equals(cloudStorageVirusFound1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = new SwagCloudStorageVirusFound();

        System.assertEquals(false, cloudStorageVirusFound1.equals('foo'));
        System.assertEquals(false, cloudStorageVirusFound2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = new SwagCloudStorageVirusFound();
        SwagCloudStorageVirusFound cloudStorageVirusFound3;

        System.assertEquals(false, cloudStorageVirusFound1.equals(cloudStorageVirusFound3));
        System.assertEquals(false, cloudStorageVirusFound2.equals(cloudStorageVirusFound3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = new SwagCloudStorageVirusFound();

        System.assertEquals(cloudStorageVirusFound1.hashCode(), cloudStorageVirusFound1.hashCode());
        System.assertEquals(cloudStorageVirusFound2.hashCode(), cloudStorageVirusFound2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagCloudStorageVirusFound cloudStorageVirusFound1 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound2 = SwagCloudStorageVirusFound.getExample();
        SwagCloudStorageVirusFound cloudStorageVirusFound3 = new SwagCloudStorageVirusFound();
        SwagCloudStorageVirusFound cloudStorageVirusFound4 = new SwagCloudStorageVirusFound();

        System.assert(cloudStorageVirusFound1.equals(cloudStorageVirusFound2));
        System.assert(cloudStorageVirusFound3.equals(cloudStorageVirusFound4));
        System.assertEquals(cloudStorageVirusFound1.hashCode(), cloudStorageVirusFound2.hashCode());
        System.assertEquals(cloudStorageVirusFound3.hashCode(), cloudStorageVirusFound4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagCloudStorageVirusFound cloudStorageVirusFound = new SwagCloudStorageVirusFound();
        Map<String, String> propertyMappings = cloudStorageVirusFound.getPropertyMappings();
        System.assertEquals('fileName', propertyMappings.get('FileName'));
        System.assertEquals('virusName', propertyMappings.get('VirusName'));
    }
}

@isTest
private class SwagVirusFoundTest {
    @isTest
    private static void equalsSameInstance() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = virusFound1;
        SwagVirusFound virusFound3 = new SwagVirusFound();
        SwagVirusFound virusFound4 = virusFound3;

        System.assert(virusFound1.equals(virusFound2));
        System.assert(virusFound2.equals(virusFound1));
        System.assert(virusFound1.equals(virusFound1));
        System.assert(virusFound3.equals(virusFound4));
        System.assert(virusFound4.equals(virusFound3));
        System.assert(virusFound3.equals(virusFound3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = SwagVirusFound.getExample();
        SwagVirusFound virusFound3 = new SwagVirusFound();
        SwagVirusFound virusFound4 = new SwagVirusFound();

        System.assert(virusFound1.equals(virusFound2));
        System.assert(virusFound2.equals(virusFound1));
        System.assert(virusFound3.equals(virusFound4));
        System.assert(virusFound4.equals(virusFound3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = new SwagVirusFound();

        System.assertEquals(false, virusFound1.equals(virusFound2));
        System.assertEquals(false, virusFound2.equals(virusFound1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = new SwagVirusFound();

        System.assertEquals(false, virusFound1.equals('foo'));
        System.assertEquals(false, virusFound2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = new SwagVirusFound();
        SwagVirusFound virusFound3;

        System.assertEquals(false, virusFound1.equals(virusFound3));
        System.assertEquals(false, virusFound2.equals(virusFound3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = new SwagVirusFound();

        System.assertEquals(virusFound1.hashCode(), virusFound1.hashCode());
        System.assertEquals(virusFound2.hashCode(), virusFound2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagVirusFound virusFound1 = SwagVirusFound.getExample();
        SwagVirusFound virusFound2 = SwagVirusFound.getExample();
        SwagVirusFound virusFound3 = new SwagVirusFound();
        SwagVirusFound virusFound4 = new SwagVirusFound();

        System.assert(virusFound1.equals(virusFound2));
        System.assert(virusFound3.equals(virusFound4));
        System.assertEquals(virusFound1.hashCode(), virusFound2.hashCode());
        System.assertEquals(virusFound3.hashCode(), virusFound4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagVirusFound virusFound = new SwagVirusFound();
        Map<String, String> propertyMappings = virusFound.getPropertyMappings();
        System.assertEquals('fileName', propertyMappings.get('FileName'));
        System.assertEquals('virusName', propertyMappings.get('VirusName'));
    }
}

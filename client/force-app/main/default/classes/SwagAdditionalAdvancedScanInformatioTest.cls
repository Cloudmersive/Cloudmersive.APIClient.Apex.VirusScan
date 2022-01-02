@isTest
private class SwagAdditionalAdvancedScanInformatioTest {
    @isTest
    private static void equalsSameInstance() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = additionalAdvancedScanInformation1;
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation3 = new SwagAdditionalAdvancedScanInformatio();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation4 = additionalAdvancedScanInformation3;

        System.assert(additionalAdvancedScanInformation1.equals(additionalAdvancedScanInformation2));
        System.assert(additionalAdvancedScanInformation2.equals(additionalAdvancedScanInformation1));
        System.assert(additionalAdvancedScanInformation1.equals(additionalAdvancedScanInformation1));
        System.assert(additionalAdvancedScanInformation3.equals(additionalAdvancedScanInformation4));
        System.assert(additionalAdvancedScanInformation4.equals(additionalAdvancedScanInformation3));
        System.assert(additionalAdvancedScanInformation3.equals(additionalAdvancedScanInformation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation3 = new SwagAdditionalAdvancedScanInformatio();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation4 = new SwagAdditionalAdvancedScanInformatio();

        System.assert(additionalAdvancedScanInformation1.equals(additionalAdvancedScanInformation2));
        System.assert(additionalAdvancedScanInformation2.equals(additionalAdvancedScanInformation1));
        System.assert(additionalAdvancedScanInformation3.equals(additionalAdvancedScanInformation4));
        System.assert(additionalAdvancedScanInformation4.equals(additionalAdvancedScanInformation3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = new SwagAdditionalAdvancedScanInformatio();

        System.assertEquals(false, additionalAdvancedScanInformation1.equals(additionalAdvancedScanInformation2));
        System.assertEquals(false, additionalAdvancedScanInformation2.equals(additionalAdvancedScanInformation1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = new SwagAdditionalAdvancedScanInformatio();

        System.assertEquals(false, additionalAdvancedScanInformation1.equals('foo'));
        System.assertEquals(false, additionalAdvancedScanInformation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = new SwagAdditionalAdvancedScanInformatio();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation3;

        System.assertEquals(false, additionalAdvancedScanInformation1.equals(additionalAdvancedScanInformation3));
        System.assertEquals(false, additionalAdvancedScanInformation2.equals(additionalAdvancedScanInformation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = new SwagAdditionalAdvancedScanInformatio();

        System.assertEquals(additionalAdvancedScanInformation1.hashCode(), additionalAdvancedScanInformation1.hashCode());
        System.assertEquals(additionalAdvancedScanInformation2.hashCode(), additionalAdvancedScanInformation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation1 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation2 = SwagAdditionalAdvancedScanInformatio.getExample();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation3 = new SwagAdditionalAdvancedScanInformatio();
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation4 = new SwagAdditionalAdvancedScanInformatio();

        System.assert(additionalAdvancedScanInformation1.equals(additionalAdvancedScanInformation2));
        System.assert(additionalAdvancedScanInformation3.equals(additionalAdvancedScanInformation4));
        System.assertEquals(additionalAdvancedScanInformation1.hashCode(), additionalAdvancedScanInformation2.hashCode());
        System.assertEquals(additionalAdvancedScanInformation3.hashCode(), additionalAdvancedScanInformation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagAdditionalAdvancedScanInformatio additionalAdvancedScanInformation = new SwagAdditionalAdvancedScanInformatio();
        Map<String, String> propertyMappings = additionalAdvancedScanInformation.getPropertyMappings();
        System.assertEquals('containsJSON', propertyMappings.get('ContainsJSON'));
        System.assertEquals('containsXML', propertyMappings.get('ContainsXML'));
    }
}

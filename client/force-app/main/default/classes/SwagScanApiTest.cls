@isTest
private class SwagScanApiTest {
    /**
     * Scan a file for viruses
     *
     * Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanFileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagScanApi api;
        SwagVirusScanResult response;
        SwagVirusScanResult expectedResponse;

        client = new SwagClient();
        api = new SwagScanApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "CleanResult" : true\r\n}');
        expectedResponse = SwagVirusScanResult.getExample();
        response = (SwagVirusScanResult) api.scanFile(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Scan a file for viruses
     *
     * Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanFileAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'allowExecutables' => true,
            'allowInvalidFiles' => true,
            'allowScripts' => true,
            'restrictFileTypes' => 'restrictFileTypes_example'
        };

        SwagClient client;
        SwagScanApi api;
        SwagVirusScanAdvancedResult response;
        SwagVirusScanAdvancedResult expectedResponse;

        client = new SwagClient();
        api = new SwagScanApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ContainsInvalidFile" : true,\r\n  "ContainsRestrictedFileFormat" : true,\r\n  "ContainsExecutable" : true,\r\n  "ContainsScript" : true,\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "VerifiedFileFormat" : "VerifiedFileFormat",\r\n  "CleanResult" : true\r\n}');
        expectedResponse = SwagVirusScanAdvancedResult.getExample();
        response = (SwagVirusScanAdvancedResult) api.scanFileAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Scan a website for malicious content and threats
     *
     * Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).
     */
    @isTest
    private static void scanWebsiteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'input' => SwagWebsiteScanRequest.getExample()
        };

        SwagClient client;
        SwagScanApi api;
        SwagWebsiteScanResult response;
        SwagWebsiteScanResult expectedResponse;

        client = new SwagClient();
        api = new SwagScanApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "CleanResult" : true,\r\n  "WebsiteThreatType" : "None"\r\n}');
        expectedResponse = SwagWebsiteScanResult.getExample();
        response = (SwagWebsiteScanResult) api.scanWebsite(params);
        System.assertEquals(expectedResponse, response);
    }
}
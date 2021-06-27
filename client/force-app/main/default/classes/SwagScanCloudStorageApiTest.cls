@isTest
private class SwagScanCloudStorageApiTest {
    /**
     * Scan an AWS S3 file for viruses
     *
     * Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanCloudStorageScanAwsS3FileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accessKey' => 'accessKey_example',
            'secretKey' => 'secretKey_example',
            'bucketRegion' => 'bucketRegion_example',
            'bucketName' => 'bucketName_example',
            'keyName' => 'keyName_example'
        };

        SwagClient client;
        SwagScanCloudStorageApi api;
        SwagCloudStorageVirusScanResult response;
        SwagCloudStorageVirusScanResult expectedResponse;

        client = new SwagClient();
        api = new SwagScanCloudStorageApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetailedDescription" : "ErrorDetailedDescription",\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "Successful" : true,\r\n  "CleanResult" : true,\r\n  "FileSize" : 0\r\n}');
        expectedResponse = SwagCloudStorageVirusScanResult.getExample();
        response = (SwagCloudStorageVirusScanResult) api.scanCloudStorageScanAwsS3File(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Scan an AWS S3 file for viruses
     *
     * Advanced Scan the contents of a single AWS S3 file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanCloudStorageScanAwsS3FileAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accessKey' => 'accessKey_example',
            'secretKey' => 'secretKey_example',
            'bucketRegion' => 'bucketRegion_example',
            'bucketName' => 'bucketName_example',
            'keyName' => 'keyName_example',
            'allowExecutables' => true,
            'allowInvalidFiles' => true,
            'allowScripts' => true,
            'allowPasswordProtectedFiles' => true,
            'allowMacros' => true,
            'restrictFileTypes' => 'restrictFileTypes_example'
        };

        SwagClient client;
        SwagScanCloudStorageApi api;
        SwagCloudStorageAdvancedVirusScanRes response;
        SwagCloudStorageAdvancedVirusScanRes expectedResponse;

        client = new SwagClient();
        api = new SwagScanCloudStorageApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetailedDescription" : "ErrorDetailedDescription",\r\n  "ContainsInvalidFile" : true,\r\n  "ContainsRestrictedFileFormat" : true,\r\n  "ContainsExecutable" : true,\r\n  "ContainsScript" : true,\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "ContainsMacros" : true,\r\n  "VerifiedFileFormat" : "VerifiedFileFormat",\r\n  "Successful" : true,\r\n  "ContainsPasswordProtectedFile" : true,\r\n  "CleanResult" : true,\r\n  "FileSize" : 0\r\n}');
        expectedResponse = SwagCloudStorageAdvancedVirusScanRes.getExample();
        response = (SwagCloudStorageAdvancedVirusScanRes) api.scanCloudStorageScanAwsS3FileAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Scan an Azure Blob for viruses
     *
     * Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanCloudStorageScanAzureBlobTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionString' => 'connectionString_example',
            'containerName' => 'containerName_example',
            'blobPath' => 'blobPath_example'
        };

        SwagClient client;
        SwagScanCloudStorageApi api;
        SwagCloudStorageVirusScanResult response;
        SwagCloudStorageVirusScanResult expectedResponse;

        client = new SwagClient();
        api = new SwagScanCloudStorageApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetailedDescription" : "ErrorDetailedDescription",\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "Successful" : true,\r\n  "CleanResult" : true,\r\n  "FileSize" : 0\r\n}');
        expectedResponse = SwagCloudStorageVirusScanResult.getExample();
        response = (SwagCloudStorageVirusScanResult) api.scanCloudStorageScanAzureBlob(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Scan an Azure Blob for viruses
     *
     * Advanced Scan the contents of a single Azure Blob and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanCloudStorageScanAzureBlobAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionString' => 'connectionString_example',
            'containerName' => 'containerName_example',
            'blobPath' => 'blobPath_example',
            'allowExecutables' => true,
            'allowInvalidFiles' => true,
            'allowScripts' => true,
            'allowPasswordProtectedFiles' => true,
            'allowMacros' => true,
            'restrictFileTypes' => 'restrictFileTypes_example'
        };

        SwagClient client;
        SwagScanCloudStorageApi api;
        SwagCloudStorageAdvancedVirusScanRes response;
        SwagCloudStorageAdvancedVirusScanRes expectedResponse;

        client = new SwagClient();
        api = new SwagScanCloudStorageApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetailedDescription" : "ErrorDetailedDescription",\r\n  "ContainsInvalidFile" : true,\r\n  "ContainsRestrictedFileFormat" : true,\r\n  "ContainsExecutable" : true,\r\n  "ContainsScript" : true,\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "ContainsMacros" : true,\r\n  "VerifiedFileFormat" : "VerifiedFileFormat",\r\n  "Successful" : true,\r\n  "ContainsPasswordProtectedFile" : true,\r\n  "CleanResult" : true,\r\n  "FileSize" : 0\r\n}');
        expectedResponse = SwagCloudStorageAdvancedVirusScanRes.getExample();
        response = (SwagCloudStorageAdvancedVirusScanRes) api.scanCloudStorageScanAzureBlobAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Scan an Google Cloud Platform (GCP) Storage file for viruses
     *
     * Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanCloudStorageScanGcpStorageFileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'bucketName' => 'bucketName_example',
            'objectName' => 'objectName_example',
            'jsonCredentialFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagScanCloudStorageApi api;
        SwagCloudStorageVirusScanResult response;
        SwagCloudStorageVirusScanResult expectedResponse;

        client = new SwagClient();
        api = new SwagScanCloudStorageApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetailedDescription" : "ErrorDetailedDescription",\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "Successful" : true,\r\n  "CleanResult" : true,\r\n  "FileSize" : 0\r\n}');
        expectedResponse = SwagCloudStorageVirusScanResult.getExample();
        response = (SwagCloudStorageVirusScanResult) api.scanCloudStorageScanGcpStorageFile(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses
     *
     * Advanced Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
     */
    @isTest
    private static void scanCloudStorageScanGcpStorageFileAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'bucketName' => 'bucketName_example',
            'objectName' => 'objectName_example',
            'jsonCredentialFile' => Blob.valueOf('Sample text file\nContents'),
            'allowExecutables' => true,
            'allowInvalidFiles' => true,
            'allowScripts' => true,
            'allowPasswordProtectedFiles' => true,
            'allowMacros' => true,
            'restrictFileTypes' => 'restrictFileTypes_example'
        };

        SwagClient client;
        SwagScanCloudStorageApi api;
        SwagCloudStorageAdvancedVirusScanRes response;
        SwagCloudStorageAdvancedVirusScanRes expectedResponse;

        client = new SwagClient();
        api = new SwagScanCloudStorageApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetailedDescription" : "ErrorDetailedDescription",\r\n  "ContainsInvalidFile" : true,\r\n  "ContainsRestrictedFileFormat" : true,\r\n  "ContainsExecutable" : true,\r\n  "ContainsScript" : true,\r\n  "FoundViruses" : [ {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  }, {\r\n    "FileName" : "FileName",\r\n    "VirusName" : "VirusName"\r\n  } ],\r\n  "ContainsMacros" : true,\r\n  "VerifiedFileFormat" : "VerifiedFileFormat",\r\n  "Successful" : true,\r\n  "ContainsPasswordProtectedFile" : true,\r\n  "CleanResult" : true,\r\n  "FileSize" : 0\r\n}');
        expectedResponse = SwagCloudStorageAdvancedVirusScanRes.getExample();
        response = (SwagCloudStorageAdvancedVirusScanRes) api.scanCloudStorageScanGcpStorageFileAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }
}
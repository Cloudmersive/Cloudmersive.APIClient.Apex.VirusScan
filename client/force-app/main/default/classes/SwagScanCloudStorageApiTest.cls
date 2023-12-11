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
            'keyName' => 'keyName_example',
            'roleArn' => 'roleArn_example'
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
        res.setBody('{"empty": false}');
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
            'roleArn' => 'roleArn_example',
            'allowExecutables' => true,
            'allowInvalidFiles' => true,
            'allowScripts' => true,
            'allowPasswordProtectedFiles' => true,
            'allowMacros' => true,
            'allowXmlExternalEntities' => true,
            'allowInsecureDeserialization' => true,
            'allowHtml' => true,
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
        res.setBody('{"empty": false}');
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
        res.setBody('{"empty": false}');
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
            'allowXmlExternalEntities' => true,
            'allowInsecureDeserialization' => true,
            'allowHtml' => true,
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
        res.setBody('{"empty": false}');
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
        res.setBody('{"empty": false}');
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
            'allowXmlExternalEntities' => true,
            'allowInsecureDeserialization' => true,
            'allowHtml' => true,
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
        res.setBody('{"empty": false}');
        expectedResponse = SwagCloudStorageAdvancedVirusScanRes.getExample();
        response = (SwagCloudStorageAdvancedVirusScanRes) api.scanCloudStorageScanGcpStorageFileAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Virus Scan a file in a SharePoint Online Site Drive
     *
     * Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.
     */
    @isTest
    private static void scanCloudStorageScanSharePointOnlineFileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'clientID' => 'clientID_example',
            'clientSecret' => 'clientSecret_example',
            'sharepointDomainName' => 'sharepointDomainName_example',
            'siteID' => 'siteID_example',
            'filePath' => 'filePath_example',
            'tenantID' => 'tenantID_example',
            'itemID' => 'itemID_example'
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
        res.setBody('{"empty": false}');
        expectedResponse = SwagCloudStorageVirusScanResult.getExample();
        response = (SwagCloudStorageVirusScanResult) api.scanCloudStorageScanSharePointOnlineFile(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Virus Scan a file in a SharePoint Online Site Drive
     *
     * Advanced Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.
     */
    @isTest
    private static void scanCloudStorageScanSharePointOnlineFileAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'clientID' => 'clientID_example',
            'clientSecret' => 'clientSecret_example',
            'sharepointDomainName' => 'sharepointDomainName_example',
            'siteID' => 'siteID_example',
            'tenantID' => 'tenantID_example',
            'filePath' => 'filePath_example',
            'itemID' => 'itemID_example',
            'allowExecutables' => true,
            'allowInvalidFiles' => true,
            'allowScripts' => true,
            'allowPasswordProtectedFiles' => true,
            'allowMacros' => true,
            'allowXmlExternalEntities' => true,
            'allowInsecureDeserialization' => true,
            'allowHtml' => true,
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
        res.setBody('{"empty": false}');
        expectedResponse = SwagCloudStorageAdvancedVirusScanRes.getExample();
        response = (SwagCloudStorageAdvancedVirusScanRes) api.scanCloudStorageScanSharePointOnlineFileAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }
}
# SwagScanCloudStorageApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanCloudStorageScanAwsS3File**](SwagScanCloudStorageApi.md#scanCloudStorageScanAwsS3File) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
[**scanCloudStorageScanAwsS3FileAdvanced**](SwagScanCloudStorageApi.md#scanCloudStorageScanAwsS3FileAdvanced) | **POST** /virus/scan/cloud-storage/aws-s3/single/advanced | Advanced Scan an AWS S3 file for viruses
[**scanCloudStorageScanAzureBlob**](SwagScanCloudStorageApi.md#scanCloudStorageScanAzureBlob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
[**scanCloudStorageScanAzureBlobAdvanced**](SwagScanCloudStorageApi.md#scanCloudStorageScanAzureBlobAdvanced) | **POST** /virus/scan/cloud-storage/azure-blob/single/advanced | Advanced Scan an Azure Blob for viruses
[**scanCloudStorageScanGcpStorageFile**](SwagScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFile) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses
[**scanCloudStorageScanGcpStorageFileAdvanced**](SwagScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFileAdvanced) | **POST** /virus/scan/cloud-storage/gcp-storage/single/advanced | Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses
[**scanCloudStorageScanSharePointOnlineFile**](SwagScanCloudStorageApi.md#scanCloudStorageScanSharePointOnlineFile) | **POST** /virus/scan/cloud-storage/sharepoint-online/site/single | Virus Scan a file in a SharePoint Online Site Drive
[**scanCloudStorageScanSharePointOnlineFileAdvanced**](SwagScanCloudStorageApi.md#scanCloudStorageScanSharePointOnlineFileAdvanced) | **POST** /virus/scan/cloud-storage/sharepoint-online/site/advanced | Advanced Virus Scan a file in a SharePoint Online Site Drive


<a name="scanCloudStorageScanAwsS3File"></a>
# **scanCloudStorageScanAwsS3File**
> SwagCloudStorageVirusScanResult scanCloudStorageScanAwsS3File(accessKey, secretKey, bucketRegion, bucketName, keyName, roleArn)

Scan an AWS S3 file for viruses

Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'accessKey' => 'accessKey_example',
    'secretKey' => 'secretKey_example',
    'bucketRegion' => 'bucketRegion_example',
    'bucketName' => 'bucketName_example',
    'keyName' => 'keyName_example',
    'roleArn' => 'roleArn_example'
};

try {
    // cross your fingers
    SwagCloudStorageVirusScanResult result = api.scanCloudStorageScanAwsS3File(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessKey** | **String**| AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console |
 **secretKey** | **String**| AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console |
 **bucketRegion** | **String**| Name of the region of the S3 bucket, such as \&#39;US-East-1\&#39; |
 **bucketName** | **String**| Name of the S3 bucket |
 **keyName** | **String**| Key name (also called file name) of the file in S3 that you wish to scan for viruses.  If the key name contains Unicode characters, you must base64 encode the key name and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |
 **roleArn** | **String**| Optional: Role ARN for STS Credential-based access.  This is for advanced access using the Security Token Service and is not required.  If the roleArn contains Unicode characters, you must base64 encode the key name and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. | [optional]

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="scanCloudStorageScanAwsS3FileAdvanced"></a>
# **scanCloudStorageScanAwsS3FileAdvanced**
> SwagCloudStorageAdvancedVirusScanRes scanCloudStorageScanAwsS3FileAdvanced(accessKey, secretKey, bucketRegion, bucketName, keyName, roleArn, allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, allowInsecureDeserialization, allowHtml, restrictFileTypes)

Advanced Scan an AWS S3 file for viruses

Advanced Scan the contents of a single AWS S3 file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

try {
    // cross your fingers
    SwagCloudStorageAdvancedVirusScanRes result = api.scanCloudStorageScanAwsS3FileAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessKey** | **String**| AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console |
 **secretKey** | **String**| AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console |
 **bucketRegion** | **String**| Name of the region of the S3 bucket, such as \&#39;US-East-1\&#39; |
 **bucketName** | **String**| Name of the S3 bucket |
 **keyName** | **String**| Key name (also called file name) of the file in S3 that you wish to scan for viruses.  If the key name contains Unicode characters, you must base64 encode the key name and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |
 **roleArn** | **String**| Optional: Role ARN for STS Credential-based access.  This is for advanced access using the Security Token Service and is not required.  If the roleArn contains Unicode characters, you must base64 encode the key name and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. | [optional]
 **allowExecutables** | **Boolean**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowMacros** | **Boolean**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allowInsecureDeserialization** | **Boolean**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowHtml** | **Boolean**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrictFileTypes** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**SwagCloudStorageAdvancedVirusScanRes**](SwagCloudStorageAdvancedVirusScanRes.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="scanCloudStorageScanAzureBlob"></a>
# **scanCloudStorageScanAzureBlob**
> SwagCloudStorageVirusScanResult scanCloudStorageScanAzureBlob(connectionString, containerName, blobPath)

Scan an Azure Blob for viruses

Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'connectionString' => 'connectionString_example',
    'containerName' => 'containerName_example',
    'blobPath' => 'blobPath_example'
};

try {
    // cross your fingers
    SwagCloudStorageVirusScanResult result = api.scanCloudStorageScanAzureBlob(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionString** | **String**| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. |
 **containerName** | **String**| Name of the Blob container within the Azure Blob Storage account |
 **blobPath** | **String**| Path to the blob within the container, such as \&#39;hello.pdf\&#39; or \&#39;/folder/subfolder/world.pdf\&#39;.  If the blob path contains Unicode characters, you must base64 encode the blob path and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="scanCloudStorageScanAzureBlobAdvanced"></a>
# **scanCloudStorageScanAzureBlobAdvanced**
> SwagCloudStorageAdvancedVirusScanRes scanCloudStorageScanAzureBlobAdvanced(connectionString, containerName, blobPath, allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, allowInsecureDeserialization, allowHtml, restrictFileTypes)

Advanced Scan an Azure Blob for viruses

Advanced Scan the contents of a single Azure Blob and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

try {
    // cross your fingers
    SwagCloudStorageAdvancedVirusScanRes result = api.scanCloudStorageScanAzureBlobAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionString** | **String**| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. |
 **containerName** | **String**| Name of the Blob container within the Azure Blob Storage account |
 **blobPath** | **String**| Path to the blob within the container, such as \&#39;hello.pdf\&#39; or \&#39;/folder/subfolder/world.pdf\&#39;.  If the blob path contains Unicode characters, you must base64 encode the blob path and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |
 **allowExecutables** | **Boolean**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowMacros** | **Boolean**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allowInsecureDeserialization** | **Boolean**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowHtml** | **Boolean**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrictFileTypes** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**SwagCloudStorageAdvancedVirusScanRes**](SwagCloudStorageAdvancedVirusScanRes.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="scanCloudStorageScanGcpStorageFile"></a>
# **scanCloudStorageScanGcpStorageFile**
> SwagCloudStorageVirusScanResult scanCloudStorageScanGcpStorageFile(bucketName, objectName, jsonCredentialFile)

Scan an Google Cloud Platform (GCP) Storage file for viruses

Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'bucketName' => 'bucketName_example',
    'objectName' => 'objectName_example',
    'jsonCredentialFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagCloudStorageVirusScanResult result = api.scanCloudStorageScanGcpStorageFile(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucketName** | **String**| Name of the bucket in Google Cloud Storage |
 **objectName** | **String**| Name of the object or file in Google Cloud Storage.  If the object name contains Unicode characters, you must base64 encode the object name and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |
 **jsonCredentialFile** | **Blob**| Service Account credential for Google Cloud stored in a JSON file. |

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="scanCloudStorageScanGcpStorageFileAdvanced"></a>
# **scanCloudStorageScanGcpStorageFileAdvanced**
> SwagCloudStorageAdvancedVirusScanRes scanCloudStorageScanGcpStorageFileAdvanced(bucketName, objectName, jsonCredentialFile, allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, allowInsecureDeserialization, allowHtml, restrictFileTypes)

Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses

Advanced Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

try {
    // cross your fingers
    SwagCloudStorageAdvancedVirusScanRes result = api.scanCloudStorageScanGcpStorageFileAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucketName** | **String**| Name of the bucket in Google Cloud Storage |
 **objectName** | **String**| Name of the object or file in Google Cloud Storage.  If the object name contains Unicode characters, you must base64 encode the object name and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |
 **jsonCredentialFile** | **Blob**| Service Account credential for Google Cloud stored in a JSON file. |
 **allowExecutables** | **Boolean**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowMacros** | **Boolean**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allowInsecureDeserialization** | **Boolean**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowHtml** | **Boolean**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrictFileTypes** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**SwagCloudStorageAdvancedVirusScanRes**](SwagCloudStorageAdvancedVirusScanRes.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="scanCloudStorageScanSharePointOnlineFile"></a>
# **scanCloudStorageScanSharePointOnlineFile**
> SwagCloudStorageVirusScanResult scanCloudStorageScanSharePointOnlineFile(clientID, clientSecret, sharepointDomainName, siteID, filePath, tenantID, itemID)

Virus Scan a file in a SharePoint Online Site Drive

Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'clientID' => 'clientID_example',
    'clientSecret' => 'clientSecret_example',
    'sharepointDomainName' => 'sharepointDomainName_example',
    'siteID' => 'siteID_example',
    'filePath' => 'filePath_example',
    'tenantID' => 'tenantID_example',
    'itemID' => 'itemID_example'
};

try {
    // cross your fingers
    SwagCloudStorageVirusScanResult result = api.scanCloudStorageScanSharePointOnlineFile(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientID** | **String**| Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal. |
 **clientSecret** | **String**| Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal |
 **sharepointDomainName** | **String**| SharePoint Online domain name, such as mydomain.sharepoint.com |
 **siteID** | **String**| Site ID (GUID) of the SharePoint site you wish to retrieve the file from |
 **filePath** | **String**| Path to the file within the drive, such as \&#39;hello.pdf\&#39; or \&#39;/folder/subfolder/world.pdf\&#39;.  If the file path contains Unicode characters, you must base64 encode the file path and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. |
 **tenantID** | **String**| Optional; Tenant ID of your Azure Active Directory | [optional]
 **itemID** | **String**| SharePoint itemID, such as a DriveItem Id | [optional]

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="scanCloudStorageScanSharePointOnlineFileAdvanced"></a>
# **scanCloudStorageScanSharePointOnlineFileAdvanced**
> SwagCloudStorageAdvancedVirusScanRes scanCloudStorageScanSharePointOnlineFileAdvanced(clientID, clientSecret, sharepointDomainName, siteID, tenantID, filePath, itemID, allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, allowInsecureDeserialization, allowHtml, restrictFileTypes)

Advanced Virus Scan a file in a SharePoint Online Site Drive

Advanced Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.

### Example
```java
SwagScanCloudStorageApi api = new SwagScanCloudStorageApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

try {
    // cross your fingers
    SwagCloudStorageAdvancedVirusScanRes result = api.scanCloudStorageScanSharePointOnlineFileAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientID** | **String**| Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal. |
 **clientSecret** | **String**| Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal |
 **sharepointDomainName** | **String**| SharePoint Online domain name, such as mydomain.sharepoint.com |
 **siteID** | **String**| Site ID (GUID) of the SharePoint site you wish to retrieve the file from |
 **tenantID** | **String**| Optional; Tenant ID of your Azure Active Directory | [optional]
 **filePath** | **String**| Path to the file within the drive, such as \&#39;hello.pdf\&#39; or \&#39;/folder/subfolder/world.pdf\&#39;.  If the file path contains Unicode characters, you must base64 encode the file path and prepend it with \&#39;base64:\&#39;, such as: \&#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV\&#39;. | [optional]
 **itemID** | **String**| SharePoint itemID, such as a DriveItem Id | [optional]
 **allowExecutables** | **Boolean**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowMacros** | **Boolean**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allowInsecureDeserialization** | **Boolean**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowHtml** | **Boolean**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrictFileTypes** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**SwagCloudStorageAdvancedVirusScanRes**](SwagCloudStorageAdvancedVirusScanRes.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


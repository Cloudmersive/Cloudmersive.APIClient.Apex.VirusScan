# SwagScanCloudStorageApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanCloudStorageScanAwsS3File**](SwagScanCloudStorageApi.md#scanCloudStorageScanAwsS3File) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
[**scanCloudStorageScanAzureBlob**](SwagScanCloudStorageApi.md#scanCloudStorageScanAzureBlob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
[**scanCloudStorageScanGcpStorageFile**](SwagScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFile) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses


<a name="scanCloudStorageScanAwsS3File"></a>
# **scanCloudStorageScanAwsS3File**
> SwagCloudStorageVirusScanResult scanCloudStorageScanAwsS3File(accessKey, secretKey, bucketRegion, bucketName, keyName)

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
    'keyName' => 'keyName_example'
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
 **keyName** | **String**| Key name (also called file name) of the file in S3 that you wish to scan for viruses |

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

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
 **blobPath** | **String**| Path to the blob within the container, such as \&#39;hello.pdf\&#39; or \&#39;/folder/subfolder/world.pdf\&#39; |

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

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
 **objectName** | **String**| Name of the object or file in Google Cloud Storage |
 **jsonCredentialFile** | **Blob**| Service Account credential for Google Cloud stored in a JSON file. |

### Return type

[**SwagCloudStorageVirusScanResult**](SwagCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


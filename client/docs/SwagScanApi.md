# SwagScanApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanFile**](SwagScanApi.md#scanFile) | **POST** /virus/scan/file | Scan a file for viruses
[**scanFileAdvanced**](SwagScanApi.md#scanFileAdvanced) | **POST** /virus/scan/file/advanced | Advanced Scan a file for viruses
[**scanWebsite**](SwagScanApi.md#scanWebsite) | **POST** /virus/scan/website | Scan a website for malicious content and threats


<a name="scanFile"></a>
# **scanFile**
> SwagVirusScanResult scanFile(inputFile)

Scan a file for viruses

Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanApi api = new SwagScanApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagVirusScanResult result = api.scanFile(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. |

### Return type

[**SwagVirusScanResult**](SwagVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="scanFileAdvanced"></a>
# **scanFileAdvanced**
> SwagVirusScanAdvancedResult scanFileAdvanced(inputFile, allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, restrictFileTypes)

Advanced Scan a file for viruses

Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```java
SwagScanApi api = new SwagScanApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'allowExecutables' => true,
    'allowInvalidFiles' => true,
    'allowScripts' => true,
    'allowPasswordProtectedFiles' => true,
    'allowMacros' => true,
    'allowXmlExternalEntities' => true,
    'restrictFileTypes' => 'restrictFileTypes_example'
};

try {
    // cross your fingers
    SwagVirusScanAdvancedResult result = api.scanFileAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. |
 **allowExecutables** | **Boolean**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowMacros** | **Boolean**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **restrictFileTypes** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**SwagVirusScanAdvancedResult**](SwagVirusScanAdvancedResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="scanWebsite"></a>
# **scanWebsite**
> SwagWebsiteScanResult scanWebsite(input)

Scan a website for malicious content and threats

Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).

### Example
```java
SwagScanApi api = new SwagScanApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'input' => SwagWebsiteScanRequest.getExample()
};

try {
    // cross your fingers
    SwagWebsiteScanResult result = api.scanWebsite(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**SwagWebsiteScanRequest**](SwagWebsiteScanRequest.md)|  |

### Return type

[**SwagWebsiteScanResult**](SwagWebsiteScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


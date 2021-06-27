# virusapi API Client

The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagScanApi api = new SwagScanApi();
SwagClient client = api.getClient();


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

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagScanApi* | [**scanFile**](docs/SwagScanApi.md#scanFile) | **POST** /virus/scan/file | Scan a file for viruses
*SwagScanApi* | [**scanFileAdvanced**](docs/SwagScanApi.md#scanFileAdvanced) | **POST** /virus/scan/file/advanced | Advanced Scan a file for viruses
*SwagScanApi* | [**scanWebsite**](docs/SwagScanApi.md#scanWebsite) | **POST** /virus/scan/website | Scan a website for malicious content and threats
*SwagScanCloudStorageApi* | [**scanCloudStorageScanAwsS3File**](docs/SwagScanCloudStorageApi.md#scanCloudStorageScanAwsS3File) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
*SwagScanCloudStorageApi* | [**scanCloudStorageScanAwsS3FileAdvanced**](docs/SwagScanCloudStorageApi.md#scanCloudStorageScanAwsS3FileAdvanced) | **POST** /virus/scan/cloud-storage/aws-s3/single/advanced | Advanced Scan an AWS S3 file for viruses
*SwagScanCloudStorageApi* | [**scanCloudStorageScanAzureBlob**](docs/SwagScanCloudStorageApi.md#scanCloudStorageScanAzureBlob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
*SwagScanCloudStorageApi* | [**scanCloudStorageScanAzureBlobAdvanced**](docs/SwagScanCloudStorageApi.md#scanCloudStorageScanAzureBlobAdvanced) | **POST** /virus/scan/cloud-storage/azure-blob/single/advanced | Advanced Scan an Azure Blob for viruses
*SwagScanCloudStorageApi* | [**scanCloudStorageScanGcpStorageFile**](docs/SwagScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFile) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses
*SwagScanCloudStorageApi* | [**scanCloudStorageScanGcpStorageFileAdvanced**](docs/SwagScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFileAdvanced) | **POST** /virus/scan/cloud-storage/gcp-storage/single/advanced | Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses


## Documentation for Models

 - [SwagCloudStorageAdvancedVirusScanRes](docs/SwagCloudStorageAdvancedVirusScanRes.md)
 - [SwagCloudStorageVirusFound](docs/SwagCloudStorageVirusFound.md)
 - [SwagCloudStorageVirusScanResult](docs/SwagCloudStorageVirusScanResult.md)
 - [SwagVirusFound](docs/SwagVirusFound.md)
 - [SwagVirusScanAdvancedResult](docs/SwagVirusScanAdvancedResult.md)
 - [SwagVirusScanResult](docs/SwagVirusScanResult.md)
 - [SwagWebsiteScanRequest](docs/SwagWebsiteScanRequest.md)
 - [SwagWebsiteScanResult](docs/SwagWebsiteScanResult.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author




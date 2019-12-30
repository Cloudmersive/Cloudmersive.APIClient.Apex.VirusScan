/*
 * virusapi
 * The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/**
 * Result of running a website scan
 */
public class SwagWebsiteScanResult implements Swagger.MappedProperties {
    /**
     * True if the scan contained no threats, false otherwise
     * @return cleanResult
     */
    public Boolean cleanResult { get; set; }

    /**
     * Type of threat returned; can be None, Malware, ForcedDownload or Phishing
     */
    public enum WebsiteThreatTypeEnum {
        NONE,
        MALWARE,
        PHISHING,
        FORCEDDOWNLOAD,
        UNABLETOCONNECT
    }

    /**
     * Type of threat returned; can be None, Malware, ForcedDownload or Phishing
     * @return websiteThreatType
     */
    public WebsiteThreatTypeEnum websiteThreatType { get; set; }

    /**
     * Array of viruses found, if any
     * @return foundViruses
     */
    public List<SwagVirusFound> foundViruses { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'CleanResult' => 'cleanResult',
        'WebsiteThreatType' => 'websiteThreatType',
        'FoundViruses' => 'foundViruses'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagWebsiteScanResult() {
        foundViruses = new List<SwagVirusFound>();
    }

    public static SwagWebsiteScanResult getExample() {
        SwagWebsiteScanResult websiteScanResult = new SwagWebsiteScanResult();
        websiteScanResult.cleanResult = true;
        websiteScanResult.websiteThreatType = WebsiteThreatTypeEnum.NONE;
        websiteScanResult.foundViruses = new List<SwagVirusFound>{SwagVirusFound.getExample()};
        return websiteScanResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagWebsiteScanResult) {
            SwagWebsiteScanResult websiteScanResult = (SwagWebsiteScanResult) obj;
            return this.cleanResult == websiteScanResult.cleanResult
                && this.websiteThreatType == websiteScanResult.websiteThreatType
                && this.foundViruses == websiteScanResult.foundViruses;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (cleanResult == null ? 0 : System.hashCode(cleanResult));
        hashCode = (17 * hashCode) + (websiteThreatType == null ? 0 : System.hashCode(websiteThreatType));
        hashCode = (17 * hashCode) + (foundViruses == null ? 0 : System.hashCode(foundViruses));
        return hashCode;
    }
}

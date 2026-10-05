import Foundation

public enum UsageListBillingResponseRowsItemMetric: String, Codable, Hashable, CaseIterable, Sendable {
    case apiRequest = "api_request"
    case ocrPage = "ocr_page"
    case fileStorageBytes = "file_storage_bytes"
    case databaseBytes = "database_bytes"
}
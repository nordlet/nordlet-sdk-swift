import Foundation

public enum QualityChecksRecordProductionRequestResult: String, Codable, Hashable, CaseIterable, Sendable {
    case passed
    case failed
}
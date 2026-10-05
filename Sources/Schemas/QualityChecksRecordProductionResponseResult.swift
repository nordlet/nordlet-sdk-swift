import Foundation

public enum QualityChecksRecordProductionResponseResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}
import Foundation

public enum PostV1ProductionQualityChecksRecordRequestResult: String, Codable, Hashable, CaseIterable, Sendable {
    case passed
    case failed
}
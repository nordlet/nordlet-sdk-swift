import Foundation

public enum PostV1ProductionQualityChecksRecordResponseResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}
import Foundation

public enum PostV1ProductionQualityChecksAddResponseResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}
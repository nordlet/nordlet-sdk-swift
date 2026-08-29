import Foundation

public enum PostV1ProductionOrdersGetResponseQualityChecksItemResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}
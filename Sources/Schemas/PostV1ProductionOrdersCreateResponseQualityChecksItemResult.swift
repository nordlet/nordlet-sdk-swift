import Foundation

public enum PostV1ProductionOrdersCreateResponseQualityChecksItemResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}
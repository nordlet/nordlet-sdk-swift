import Foundation

public enum PostV1ProductionQualityChecksListResponseRowsItemResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}
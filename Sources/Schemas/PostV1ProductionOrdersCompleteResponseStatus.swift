import Foundation

public enum PostV1ProductionOrdersCompleteResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}
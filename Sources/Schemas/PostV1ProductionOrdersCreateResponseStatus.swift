import Foundation

public enum PostV1ProductionOrdersCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}
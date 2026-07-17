import Foundation

public enum PostV1ProductionOrdersGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}
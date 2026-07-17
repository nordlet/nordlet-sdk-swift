import Foundation

public enum PostV1SalesActsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}
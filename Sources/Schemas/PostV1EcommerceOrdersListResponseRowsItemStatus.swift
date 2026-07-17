import Foundation

public enum PostV1EcommerceOrdersListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case reserved
    case fulfilled
    case cancelled
}
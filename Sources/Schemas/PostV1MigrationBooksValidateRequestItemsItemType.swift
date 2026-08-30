import Foundation

public enum PostV1MigrationBooksValidateRequestItemsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
}
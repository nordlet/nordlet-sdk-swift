import Foundation

public enum PostV1DeclarationsConfigsUpdateResponseFieldsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case text
    case secret
    case select
}
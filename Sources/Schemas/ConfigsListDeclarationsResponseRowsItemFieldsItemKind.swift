import Foundation

public enum ConfigsListDeclarationsResponseRowsItemFieldsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case text
    case secret
    case select
    case url
    case certificate
}
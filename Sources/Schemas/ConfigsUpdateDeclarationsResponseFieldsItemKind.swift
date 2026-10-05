import Foundation

public enum ConfigsUpdateDeclarationsResponseFieldsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case text
    case secret
    case select
    case url
    case certificate
}
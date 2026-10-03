import Foundation

public enum PostV1DeclarationsCertificatesDeleteResponseRowsItemHealth: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
}
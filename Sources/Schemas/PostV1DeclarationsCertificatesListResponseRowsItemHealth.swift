import Foundation

public enum PostV1DeclarationsCertificatesListResponseRowsItemHealth: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
}
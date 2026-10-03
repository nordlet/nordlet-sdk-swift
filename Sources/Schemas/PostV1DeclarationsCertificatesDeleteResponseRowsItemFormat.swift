import Foundation

public enum PostV1DeclarationsCertificatesDeleteResponseRowsItemFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case pem
    case pemKey = "pem-key"
    case pfx
}
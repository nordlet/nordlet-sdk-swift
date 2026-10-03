import Foundation

public enum PostV1DeclarationsCertificatesUploadResponseRowsItemFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case pem
    case pemKey = "pem-key"
    case pfx
}
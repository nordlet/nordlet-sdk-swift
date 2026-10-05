import Foundation

public enum CertificatesUploadDeclarationsResponseRowsItemFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case pem
    case pemKey = "pem-key"
    case pfx
}
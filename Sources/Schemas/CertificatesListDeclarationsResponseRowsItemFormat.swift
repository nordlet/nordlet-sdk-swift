import Foundation

public enum CertificatesListDeclarationsResponseRowsItemFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case pem
    case pemKey = "pem-key"
    case pfx
}
import Foundation

public enum CertificatesDeleteDeclarationsResponseRowsItemFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case pem
    case pemKey = "pem-key"
    case pfx
}
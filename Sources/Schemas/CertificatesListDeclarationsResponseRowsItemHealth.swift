import Foundation

public enum CertificatesListDeclarationsResponseRowsItemHealth: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
}
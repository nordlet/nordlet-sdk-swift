import Foundation

public enum CertificatesDeleteDeclarationsResponseRowsItemHealth: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
}
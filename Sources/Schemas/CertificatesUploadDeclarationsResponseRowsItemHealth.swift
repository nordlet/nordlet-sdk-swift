import Foundation

public enum CertificatesUploadDeclarationsResponseRowsItemHealth: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
}
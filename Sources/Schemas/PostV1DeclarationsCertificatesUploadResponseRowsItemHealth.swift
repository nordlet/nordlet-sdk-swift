import Foundation

public enum PostV1DeclarationsCertificatesUploadResponseRowsItemHealth: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
}
import Foundation

public enum PostV1AgreementsAgreementsCreateRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
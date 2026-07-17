import Foundation

public enum PostV1AgreementsAgreementsUpdateRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
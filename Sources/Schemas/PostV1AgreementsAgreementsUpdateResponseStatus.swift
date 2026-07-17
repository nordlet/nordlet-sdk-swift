import Foundation

public enum PostV1AgreementsAgreementsUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
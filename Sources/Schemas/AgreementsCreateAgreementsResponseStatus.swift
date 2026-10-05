import Foundation

public enum AgreementsCreateAgreementsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
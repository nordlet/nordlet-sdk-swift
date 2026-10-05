import Foundation

public enum AgreementsUpdateAgreementsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
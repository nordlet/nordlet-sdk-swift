import Foundation

public enum AgreementsGetAgreementsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
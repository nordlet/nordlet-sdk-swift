import Foundation

public enum AgreementsCreateAgreementsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
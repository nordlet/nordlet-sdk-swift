import Foundation

public enum AgreementsUpdateAgreementsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}
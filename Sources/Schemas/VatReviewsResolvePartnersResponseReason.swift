import Foundation

public enum VatReviewsResolvePartnersResponseReason: String, Codable, Hashable, CaseIterable, Sendable {
    case invalid
    case serviceError = "service_error"
    case nameMismatch = "name_mismatch"
}
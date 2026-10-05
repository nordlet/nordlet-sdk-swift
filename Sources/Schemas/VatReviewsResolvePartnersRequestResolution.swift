import Foundation

public enum VatReviewsResolvePartnersRequestResolution: String, Codable, Hashable, CaseIterable, Sendable {
    case confirmedValid = "confirmed_valid"
    case confirmedInvalid = "confirmed_invalid"
    case dismissed
}
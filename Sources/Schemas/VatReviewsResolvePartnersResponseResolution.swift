import Foundation

public enum VatReviewsResolvePartnersResponseResolution: String, Codable, Hashable, CaseIterable, Sendable {
    case confirmedValid = "confirmed_valid"
    case confirmedInvalid = "confirmed_invalid"
    case dismissed
    case revalidated
    case superseded
}
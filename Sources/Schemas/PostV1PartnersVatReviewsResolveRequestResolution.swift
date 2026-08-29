import Foundation

public enum PostV1PartnersVatReviewsResolveRequestResolution: String, Codable, Hashable, CaseIterable, Sendable {
    case confirmedValid = "confirmed_valid"
    case confirmedInvalid = "confirmed_invalid"
    case dismissed
}
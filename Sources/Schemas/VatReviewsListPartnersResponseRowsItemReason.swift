import Foundation

public enum VatReviewsListPartnersResponseRowsItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case invalid
    case serviceError = "service_error"
    case nameMismatch = "name_mismatch"
}
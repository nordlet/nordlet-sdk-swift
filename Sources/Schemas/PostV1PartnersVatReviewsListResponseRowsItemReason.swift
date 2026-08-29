import Foundation

public enum PostV1PartnersVatReviewsListResponseRowsItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case invalid
    case serviceError = "service_error"
    case nameMismatch = "name_mismatch"
}
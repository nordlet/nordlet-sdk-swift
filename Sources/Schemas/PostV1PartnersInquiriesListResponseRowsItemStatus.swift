import Foundation

public enum PostV1PartnersInquiriesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
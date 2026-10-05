import Foundation

public enum InquiriesListPartnersResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
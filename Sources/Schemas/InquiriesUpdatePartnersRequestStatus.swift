import Foundation

public enum InquiriesUpdatePartnersRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
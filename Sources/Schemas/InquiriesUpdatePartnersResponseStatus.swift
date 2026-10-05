import Foundation

public enum InquiriesUpdatePartnersResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
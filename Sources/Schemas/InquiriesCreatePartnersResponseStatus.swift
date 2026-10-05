import Foundation

public enum InquiriesCreatePartnersResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
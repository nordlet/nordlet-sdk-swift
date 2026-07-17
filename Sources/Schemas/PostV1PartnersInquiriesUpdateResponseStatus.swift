import Foundation

public enum PostV1PartnersInquiriesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
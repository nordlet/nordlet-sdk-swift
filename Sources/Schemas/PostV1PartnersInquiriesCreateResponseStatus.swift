import Foundation

public enum PostV1PartnersInquiriesCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case inProgress = "in_progress"
    case closed
}
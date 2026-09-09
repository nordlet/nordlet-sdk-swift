import Foundation

public enum PostV1LeadsCreateRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
}
import Foundation

public enum PostV1LeadsUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
    case converted
}
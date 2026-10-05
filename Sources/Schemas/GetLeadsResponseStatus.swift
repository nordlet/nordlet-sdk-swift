import Foundation

public enum GetLeadsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
    case converted
}
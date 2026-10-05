import Foundation

public enum UpdateLeadsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
    case converted
}
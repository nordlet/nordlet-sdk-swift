import Foundation

public enum CreateLeadsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
    case converted
}
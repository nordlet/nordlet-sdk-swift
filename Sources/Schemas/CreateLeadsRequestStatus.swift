import Foundation

public enum CreateLeadsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
}
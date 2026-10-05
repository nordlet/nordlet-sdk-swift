import Foundation

public enum UpdateLeadsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case contacted
    case qualified
    case lost
}
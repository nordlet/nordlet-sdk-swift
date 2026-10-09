import Foundation

public enum ShiftsClosePosResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case closed
}
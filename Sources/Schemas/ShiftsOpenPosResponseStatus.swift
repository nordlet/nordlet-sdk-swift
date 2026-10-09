import Foundation

public enum ShiftsOpenPosResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case closed
}
import Foundation

public enum ShiftsGetPosResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case closed
}
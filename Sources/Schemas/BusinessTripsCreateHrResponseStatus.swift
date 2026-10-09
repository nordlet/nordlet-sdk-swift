import Foundation

public enum BusinessTripsCreateHrResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}
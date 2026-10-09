import Foundation

public enum BusinessTripsGetHrResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}
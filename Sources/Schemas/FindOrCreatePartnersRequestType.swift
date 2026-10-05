import Foundation

public enum FindOrCreatePartnersRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case company
    case person
}
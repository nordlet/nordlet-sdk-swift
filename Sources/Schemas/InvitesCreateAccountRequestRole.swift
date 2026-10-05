import Foundation

public enum InvitesCreateAccountRequestRole: String, Codable, Hashable, CaseIterable, Sendable {
    case admin
    case accountant
    case manager
    case developer
    case viewer
}
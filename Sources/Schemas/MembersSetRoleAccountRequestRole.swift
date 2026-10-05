import Foundation

public enum MembersSetRoleAccountRequestRole: String, Codable, Hashable, CaseIterable, Sendable {
    case admin
    case accountant
    case manager
    case developer
    case viewer
}
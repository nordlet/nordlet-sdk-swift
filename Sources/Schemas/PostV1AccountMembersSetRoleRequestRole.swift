import Foundation

public enum PostV1AccountMembersSetRoleRequestRole: String, Codable, Hashable, CaseIterable, Sendable {
    case admin
    case accountant
    case manager
    case developer
    case viewer
}
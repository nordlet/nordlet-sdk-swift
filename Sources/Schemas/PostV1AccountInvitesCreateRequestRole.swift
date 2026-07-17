import Foundation

public enum PostV1AccountInvitesCreateRequestRole: String, Codable, Hashable, CaseIterable, Sendable {
    case admin
    case accountant
    case manager
    case developer
    case viewer
}
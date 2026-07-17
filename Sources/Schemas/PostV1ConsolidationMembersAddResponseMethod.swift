import Foundation

public enum PostV1ConsolidationMembersAddResponseMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case full
    case proportional
    case equity
}
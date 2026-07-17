import Foundation

public enum PostV1ConsolidationMembersAddRequestMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case full
    case proportional
    case equity
}
import Foundation

public enum MembersAddConsolidationRequestMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case full
    case proportional
    case equity
}
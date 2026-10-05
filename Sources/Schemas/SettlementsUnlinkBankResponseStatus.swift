import Foundation

public enum SettlementsUnlinkBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}
import Foundation

public enum SettlementsLinkBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}
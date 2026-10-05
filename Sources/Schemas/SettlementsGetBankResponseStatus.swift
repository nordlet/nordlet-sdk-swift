import Foundation

public enum SettlementsGetBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}
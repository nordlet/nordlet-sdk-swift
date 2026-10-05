import Foundation

public enum SettlementsPostBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}
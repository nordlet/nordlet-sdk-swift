import Foundation

public enum MandatesCreateBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}
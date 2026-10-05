import Foundation

public enum MandatesUpdateBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}
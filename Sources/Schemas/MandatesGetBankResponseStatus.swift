import Foundation

public enum MandatesGetBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}
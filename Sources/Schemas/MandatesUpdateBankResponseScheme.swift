import Foundation

public enum MandatesUpdateBankResponseScheme: String, Codable, Hashable, CaseIterable, Sendable {
    case core = "CORE"
    case b2B = "B2B"
}
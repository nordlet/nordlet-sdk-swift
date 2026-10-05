import Foundation

public enum MandatesGetBankResponseScheme: String, Codable, Hashable, CaseIterable, Sendable {
    case core = "CORE"
    case b2B = "B2B"
}
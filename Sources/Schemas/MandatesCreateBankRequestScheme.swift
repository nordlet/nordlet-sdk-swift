import Foundation

public enum MandatesCreateBankRequestScheme: String, Codable, Hashable, CaseIterable, Sendable {
    case core = "CORE"
    case b2B = "B2B"
}
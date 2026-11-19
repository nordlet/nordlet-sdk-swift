import Foundation

public enum MandatesUpdateBankResponseScheme: String, Codable, Hashable, CaseIterable, Sendable {
    case core = "CORE"
    case b2B = "B2B"
    case bacs = "BACS"
    case ppd = "PPD"
    case ccd = "CCD"
}
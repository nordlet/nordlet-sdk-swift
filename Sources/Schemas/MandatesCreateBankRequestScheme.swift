import Foundation

public enum MandatesCreateBankRequestScheme: String, Codable, Hashable, CaseIterable, Sendable {
    case core = "CORE"
    case b2B = "B2B"
    case bacs = "BACS"
    case ppd = "PPD"
    case ccd = "CCD"
}
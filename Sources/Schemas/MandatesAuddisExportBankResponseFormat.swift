import Foundation

public enum MandatesAuddisExportBankResponseFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case pain00100103 = "pain.001.001.03"
    case pain00800102 = "pain.008.001.02"
    case bacsStandard18 = "bacs-standard-18"
    case nacha
}
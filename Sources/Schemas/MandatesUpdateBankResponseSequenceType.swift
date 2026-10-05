import Foundation

public enum MandatesUpdateBankResponseSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
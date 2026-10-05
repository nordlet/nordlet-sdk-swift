import Foundation

public enum MandatesCreateBankResponseSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
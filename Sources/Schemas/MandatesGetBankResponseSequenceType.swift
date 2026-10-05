import Foundation

public enum MandatesGetBankResponseSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
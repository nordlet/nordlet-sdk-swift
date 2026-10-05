import Foundation

public enum MandatesCancelBankResponseSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
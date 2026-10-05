import Foundation

public enum MandatesCreateBankRequestSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
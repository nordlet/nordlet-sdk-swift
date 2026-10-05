import Foundation

public enum MandatesListBankResponseRowsItemSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
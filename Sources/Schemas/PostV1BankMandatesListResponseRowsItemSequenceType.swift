import Foundation

public enum PostV1BankMandatesListResponseRowsItemSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
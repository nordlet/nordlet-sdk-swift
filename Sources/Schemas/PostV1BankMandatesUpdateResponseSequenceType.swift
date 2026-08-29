import Foundation

public enum PostV1BankMandatesUpdateResponseSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
import Foundation

public enum PostV1BankMandatesCancelResponseSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
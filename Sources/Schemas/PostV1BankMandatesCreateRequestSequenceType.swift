import Foundation

public enum PostV1BankMandatesCreateRequestSequenceType: String, Codable, Hashable, CaseIterable, Sendable {
    case recurrent
    case oneOff = "one_off"
}
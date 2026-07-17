import Foundation

public enum PostV1LedgerOwnersUpdateRequestSharesType: String, Codable, Hashable, CaseIterable, Sendable {
    case v = "V"
    case pr = "PR"
    case pp = "PP"
    case prv = "PRV"
}
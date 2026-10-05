import Foundation

public enum OwnersCreateLedgerRequestSharesType: String, Codable, Hashable, CaseIterable, Sendable {
    case v = "V"
    case pr = "PR"
    case pp = "PP"
    case prv = "PRV"
}
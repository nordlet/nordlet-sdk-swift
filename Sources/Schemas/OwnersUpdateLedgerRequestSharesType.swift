import Foundation

public enum OwnersUpdateLedgerRequestSharesType: String, Codable, Hashable, CaseIterable, Sendable {
    case v = "V"
    case pr = "PR"
    case pp = "PP"
    case prv = "PRV"
}
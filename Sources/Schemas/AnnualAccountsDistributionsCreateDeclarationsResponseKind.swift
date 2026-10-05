import Foundation

public enum AnnualAccountsDistributionsCreateDeclarationsResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
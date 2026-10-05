import Foundation

public enum AnnualAccountsDistributionsUpdateDeclarationsResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
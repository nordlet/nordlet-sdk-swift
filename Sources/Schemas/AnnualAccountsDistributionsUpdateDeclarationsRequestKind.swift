import Foundation

public enum AnnualAccountsDistributionsUpdateDeclarationsRequestKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
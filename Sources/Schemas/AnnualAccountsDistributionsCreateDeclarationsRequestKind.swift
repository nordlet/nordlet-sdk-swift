import Foundation

public enum AnnualAccountsDistributionsCreateDeclarationsRequestKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
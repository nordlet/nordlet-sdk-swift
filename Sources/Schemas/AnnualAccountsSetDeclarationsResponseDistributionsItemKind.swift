import Foundation

public enum AnnualAccountsSetDeclarationsResponseDistributionsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
import Foundation

public enum PostV1DeclarationsAnnualAccountsSetResponseDistributionsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
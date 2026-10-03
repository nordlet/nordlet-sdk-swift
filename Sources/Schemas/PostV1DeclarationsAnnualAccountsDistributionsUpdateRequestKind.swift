import Foundation

public enum PostV1DeclarationsAnnualAccountsDistributionsUpdateRequestKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
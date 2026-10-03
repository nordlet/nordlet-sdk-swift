import Foundation

public enum PostV1DeclarationsAnnualAccountsDistributionsCreateResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
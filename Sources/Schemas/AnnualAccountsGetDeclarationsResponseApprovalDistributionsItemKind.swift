import Foundation

public enum AnnualAccountsGetDeclarationsResponseApprovalDistributionsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case dividend
    case interimDividend = "interim_dividend"
    case other
}
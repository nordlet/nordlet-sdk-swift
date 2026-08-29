import Foundation

public enum PostV1BillingTransactionsListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case trialGrant = "trial_grant"
    case topup
    case usage
    case activation
    case adjustment
}
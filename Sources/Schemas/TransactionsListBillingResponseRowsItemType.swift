import Foundation

public enum TransactionsListBillingResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case trialGrant = "trial_grant"
    case topup
    case usage
    case activation
    case adjustment
}
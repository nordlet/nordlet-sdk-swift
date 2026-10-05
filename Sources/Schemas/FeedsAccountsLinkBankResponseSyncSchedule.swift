import Foundation

public enum FeedsAccountsLinkBankResponseSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
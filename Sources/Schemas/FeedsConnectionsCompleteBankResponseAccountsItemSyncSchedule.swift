import Foundation

public enum FeedsConnectionsCompleteBankResponseAccountsItemSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
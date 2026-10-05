import Foundation

public enum FeedsConnectionsGetBankResponseAccountsItemSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
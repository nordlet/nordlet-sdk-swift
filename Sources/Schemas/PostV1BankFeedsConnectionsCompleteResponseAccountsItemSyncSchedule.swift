import Foundation

public enum PostV1BankFeedsConnectionsCompleteResponseAccountsItemSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
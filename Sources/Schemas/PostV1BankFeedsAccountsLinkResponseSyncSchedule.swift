import Foundation

public enum PostV1BankFeedsAccountsLinkResponseSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
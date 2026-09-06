import Foundation

public enum PostV1BankFeedsAccountsConfigureRequestSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
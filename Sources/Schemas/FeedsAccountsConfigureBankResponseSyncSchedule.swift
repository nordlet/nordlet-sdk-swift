import Foundation

public enum FeedsAccountsConfigureBankResponseSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
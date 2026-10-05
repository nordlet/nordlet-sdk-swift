import Foundation

public enum FeedsAccountsConfigureBankRequestSyncSchedule: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case daily
    case weekly
    case monthly
}
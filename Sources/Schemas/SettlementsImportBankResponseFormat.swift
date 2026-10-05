import Foundation

public enum SettlementsImportBankResponseFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case payoutReconciliation = "payout_reconciliation"
    case unifiedPayments = "unified_payments"
}
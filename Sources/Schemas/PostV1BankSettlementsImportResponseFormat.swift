import Foundation

public enum PostV1BankSettlementsImportResponseFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case payoutReconciliation = "payout_reconciliation"
    case unifiedPayments = "unified_payments"
}
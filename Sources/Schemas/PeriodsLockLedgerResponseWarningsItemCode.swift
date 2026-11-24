import Foundation

public enum PeriodsLockLedgerResponseWarningsItemCode: String, Codable, Hashable, CaseIterable, Sendable {
    case draftSaleDocuments = "draft_sale_documents"
    case draftPurchaseDocuments = "draft_purchase_documents"
    case unbookedBankLines = "unbooked_bank_lines"
    case depreciationNotPosted = "depreciation_not_posted"
    case deferralsNotPosted = "deferrals_not_posted"
    case recurringInvoicesNotGenerated = "recurring_invoices_not_generated"
    case payrollRunsNotApproved = "payroll_runs_not_approved"
    case openFxReceivables = "open_fx_receivables"
    case openFxPayables = "open_fx_payables"
    case bankLedgerDiffersFromStatement = "bank_ledger_differs_from_statement"
    case vatOutsideReturns = "vat_outside_returns"
    case filingSettingsMissing = "filing_settings_missing"
}
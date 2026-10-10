import Foundation

public enum TransactionsMatchManyBankRequestAllocationsItemDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case saleInvoice = "sale_invoice"
    case purchaseInvoice = "purchase_invoice"
    case payrollRun = "payroll_run"
}
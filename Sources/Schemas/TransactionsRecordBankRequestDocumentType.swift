import Foundation

public enum TransactionsRecordBankRequestDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case saleInvoice = "sale_invoice"
    case purchaseInvoice = "purchase_invoice"
    case payrollRun = "payroll_run"
}
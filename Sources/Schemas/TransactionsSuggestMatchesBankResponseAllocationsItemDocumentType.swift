import Foundation

public enum TransactionsSuggestMatchesBankResponseAllocationsItemDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case saleInvoice = "sale_invoice"
    case purchaseInvoice = "purchase_invoice"
}
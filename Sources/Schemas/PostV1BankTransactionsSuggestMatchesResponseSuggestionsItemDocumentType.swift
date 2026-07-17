import Foundation

public enum PostV1BankTransactionsSuggestMatchesResponseSuggestionsItemDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case saleInvoice = "sale_invoice"
    case purchaseInvoice = "purchase_invoice"
}
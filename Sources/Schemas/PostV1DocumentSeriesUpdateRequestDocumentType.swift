import Foundation

public enum PostV1DocumentSeriesUpdateRequestDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case saleInvoice = "sale_invoice"
    case saleCreditNote = "sale_credit_note"
    case saleProforma = "sale_proforma"
    case saleAdvance = "sale_advance"
}
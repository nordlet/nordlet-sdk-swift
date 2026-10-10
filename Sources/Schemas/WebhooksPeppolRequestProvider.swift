import Foundation

public enum WebhooksPeppolRequestProvider: String, Codable, Hashable, CaseIterable, Sendable {
    case recommand
    case storecove
    case eInvoiceBe = "e-invoice-be"
}
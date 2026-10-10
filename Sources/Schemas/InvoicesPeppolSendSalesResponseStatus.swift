import Foundation

public enum InvoicesPeppolSendSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case rejected
    case failed
}
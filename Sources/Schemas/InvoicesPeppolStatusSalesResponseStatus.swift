import Foundation

public enum InvoicesPeppolStatusSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case rejected
    case failed
}
import Foundation

public enum InvoicesEinvoiceStatusSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}
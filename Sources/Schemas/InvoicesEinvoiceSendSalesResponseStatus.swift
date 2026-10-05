import Foundation

public enum InvoicesEinvoiceSendSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}
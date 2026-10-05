import Foundation

public enum InvoicesEinvoiceSendSalesResponseTransport: String, Codable, Hashable, CaseIterable, Sendable {
    case bridge
    case direct
}
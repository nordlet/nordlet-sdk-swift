import Foundation

public enum OrdersSubmitPurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case submitted
    case approved
    case partiallyReceived = "partially_received"
    case received
    case closed
    case cancelled
}
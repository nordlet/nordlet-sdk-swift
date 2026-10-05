import Foundation

public enum InvoicesUnlockSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
import Foundation

public enum InvoicesGetSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
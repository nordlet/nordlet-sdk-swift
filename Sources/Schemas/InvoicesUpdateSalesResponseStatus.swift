import Foundation

public enum InvoicesUpdateSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
import Foundation

public enum InvoicesCreateSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
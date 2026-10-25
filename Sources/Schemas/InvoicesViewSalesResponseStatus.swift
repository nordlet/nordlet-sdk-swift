import Foundation

public enum InvoicesViewSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
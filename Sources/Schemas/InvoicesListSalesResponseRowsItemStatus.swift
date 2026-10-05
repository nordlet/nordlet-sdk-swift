import Foundation

public enum InvoicesListSalesResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
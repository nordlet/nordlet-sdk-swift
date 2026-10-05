import Foundation

public enum InvoicesListPurchasesResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}
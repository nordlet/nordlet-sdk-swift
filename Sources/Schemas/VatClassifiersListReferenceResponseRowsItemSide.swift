import Foundation

public enum VatClassifiersListReferenceResponseRowsItemSide: String, Codable, Hashable, CaseIterable, Sendable {
    case sale
    case purchase
    case both
}
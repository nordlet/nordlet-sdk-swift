import Foundation

public enum PostV1SalesInvoicesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}
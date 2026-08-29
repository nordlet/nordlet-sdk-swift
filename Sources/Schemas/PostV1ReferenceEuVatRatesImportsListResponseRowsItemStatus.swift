import Foundation

public enum PostV1ReferenceEuVatRatesImportsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case running
    case succeeded
    case failed
}
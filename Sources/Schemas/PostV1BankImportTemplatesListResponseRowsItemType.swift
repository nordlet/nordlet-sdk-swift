import Foundation

public enum PostV1BankImportTemplatesListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case stripe
    case iso20022
    case bankConnection = "bank_connection"
}
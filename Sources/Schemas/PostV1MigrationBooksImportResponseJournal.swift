import Foundation

public struct PostV1MigrationBooksImportResponseJournal: Codable, Hashable, Sendable {
    public let transactions: Int64
    public let entries: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        transactions: Int64,
        entries: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.transactions = transactions
        self.entries = entries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.transactions = try container.decode(Int64.self, forKey: .transactions)
        self.entries = try container.decode(Int64.self, forKey: .entries)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.transactions, forKey: .transactions)
        try container.encode(self.entries, forKey: .entries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case transactions
        case entries
    }
}
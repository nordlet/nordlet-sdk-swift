import Foundation

public struct PostV1MigrationBooksValidateRequestOpeningBalances: Codable, Hashable, Sendable {
    public let date: String?
    public let balancingAccountCode: String?
    public let entries: [PostV1MigrationBooksValidateRequestOpeningBalancesEntriesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: String? = nil,
        balancingAccountCode: String? = nil,
        entries: [PostV1MigrationBooksValidateRequestOpeningBalancesEntriesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.balancingAccountCode = balancingAccountCode
        self.entries = entries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.balancingAccountCode = try container.decodeIfPresent(String.self, forKey: .balancingAccountCode)
        self.entries = try container.decode([PostV1MigrationBooksValidateRequestOpeningBalancesEntriesItem].self, forKey: .entries)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.balancingAccountCode, forKey: .balancingAccountCode)
        try container.encode(self.entries, forKey: .entries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case balancingAccountCode
        case entries
    }
}
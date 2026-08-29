import Foundation

public struct PostV1BankFeedsSyncResponseAccountsItem: Codable, Hashable, Sendable {
    public let feedAccountId: String
    public let imported: Int64
    public let fetched: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        feedAccountId: String,
        imported: Int64,
        fetched: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.feedAccountId = feedAccountId
        self.imported = imported
        self.fetched = fetched
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.feedAccountId = try container.decode(String.self, forKey: .feedAccountId)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.fetched = try container.decode(Int64.self, forKey: .fetched)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.feedAccountId, forKey: .feedAccountId)
        try container.encode(self.imported, forKey: .imported)
        try container.encode(self.fetched, forKey: .fetched)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case feedAccountId
        case imported
        case fetched
    }
}
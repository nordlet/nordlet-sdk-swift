import Foundation

public struct PostV1BankFeedsSyncResponse: Codable, Hashable, Sendable {
    public let connectionId: String
    public let imported: Int64
    public let skipped: Int64
    public let accounts: [PostV1BankFeedsSyncResponseAccountsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connectionId: String,
        imported: Int64,
        skipped: Int64,
        accounts: [PostV1BankFeedsSyncResponseAccountsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connectionId = connectionId
        self.imported = imported
        self.skipped = skipped
        self.accounts = accounts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connectionId = try container.decode(String.self, forKey: .connectionId)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.accounts = try container.decode([PostV1BankFeedsSyncResponseAccountsItem].self, forKey: .accounts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connectionId, forKey: .connectionId)
        try container.encode(self.imported, forKey: .imported)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.accounts, forKey: .accounts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connectionId
        case imported
        case skipped
        case accounts
    }
}
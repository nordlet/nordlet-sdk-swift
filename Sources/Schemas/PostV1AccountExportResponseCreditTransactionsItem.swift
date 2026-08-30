import Foundation

public struct PostV1AccountExportResponseCreditTransactionsItem: Codable, Hashable, Sendable {
    public let id: String
    public let type: String
    public let amountCents: Int64
    public let balanceAfterCents: Int64
    public let description: String
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: String,
        amountCents: Int64,
        balanceAfterCents: Int64,
        description: String,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.amountCents = amountCents
        self.balanceAfterCents = balanceAfterCents
        self.description = description
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(String.self, forKey: .type)
        self.amountCents = try container.decode(Int64.self, forKey: .amountCents)
        self.balanceAfterCents = try container.decode(Int64.self, forKey: .balanceAfterCents)
        self.description = try container.decode(String.self, forKey: .description)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.amountCents, forKey: .amountCents)
        try container.encode(self.balanceAfterCents, forKey: .balanceAfterCents)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case amountCents
        case balanceAfterCents
        case description
        case createdAt
    }
}
import Foundation

public struct PostV1BillingTransactionsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1BillingTransactionsListResponseRowsItemType
    public let amountCents: Int64
    public let balanceAfterCents: Int64
    public let description: String
    public let reference: Nullable<String>
    public let usageDate: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1BillingTransactionsListResponseRowsItemType,
        amountCents: Int64,
        balanceAfterCents: Int64,
        description: String,
        reference: Nullable<String>,
        usageDate: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.amountCents = amountCents
        self.balanceAfterCents = balanceAfterCents
        self.description = description
        self.reference = reference
        self.usageDate = usageDate
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1BillingTransactionsListResponseRowsItemType.self, forKey: .type)
        self.amountCents = try container.decode(Int64.self, forKey: .amountCents)
        self.balanceAfterCents = try container.decode(Int64.self, forKey: .balanceAfterCents)
        self.description = try container.decode(String.self, forKey: .description)
        self.reference = try container.decode(Nullable<String>.self, forKey: .reference)
        self.usageDate = try container.decode(Nullable<String>.self, forKey: .usageDate)
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
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.usageDate, forKey: .usageDate)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case amountCents
        case balanceAfterCents
        case description
        case reference
        case usageDate
        case createdAt
    }
}
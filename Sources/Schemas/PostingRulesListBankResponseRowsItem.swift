import Foundation

public struct PostingRulesListBankResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let counterpartyContains: Nullable<String>
    public let descriptionContains: Nullable<String>
    public let accountCode: String
    public let partnerId: Nullable<String>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        counterpartyContains: Nullable<String>,
        descriptionContains: Nullable<String>,
        accountCode: String,
        partnerId: Nullable<String>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.counterpartyContains = counterpartyContains
        self.descriptionContains = descriptionContains
        self.accountCode = accountCode
        self.partnerId = partnerId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.counterpartyContains = try container.decode(Nullable<String>.self, forKey: .counterpartyContains)
        self.descriptionContains = try container.decode(Nullable<String>.self, forKey: .descriptionContains)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.counterpartyContains, forKey: .counterpartyContains)
        try container.encode(self.descriptionContains, forKey: .descriptionContains)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case counterpartyContains
        case descriptionContains
        case accountCode
        case partnerId
        case createdAt
    }
}
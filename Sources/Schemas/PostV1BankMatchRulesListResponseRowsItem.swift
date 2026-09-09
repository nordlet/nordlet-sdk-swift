import Foundation

public struct PostV1BankMatchRulesListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let provider: String
    public let pattern: String
    public let payoutIdPrefix: Nullable<String>
    public let bankAccountId: Nullable<String>
    public let dateWindowDays: Int64
    public let isActive: Bool
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        provider: String,
        pattern: String,
        payoutIdPrefix: Nullable<String>,
        bankAccountId: Nullable<String>,
        dateWindowDays: Int64,
        isActive: Bool,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.provider = provider
        self.pattern = pattern
        self.payoutIdPrefix = payoutIdPrefix
        self.bankAccountId = bankAccountId
        self.dateWindowDays = dateWindowDays
        self.isActive = isActive
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.provider = try container.decode(String.self, forKey: .provider)
        self.pattern = try container.decode(String.self, forKey: .pattern)
        self.payoutIdPrefix = try container.decode(Nullable<String>.self, forKey: .payoutIdPrefix)
        self.bankAccountId = try container.decode(Nullable<String>.self, forKey: .bankAccountId)
        self.dateWindowDays = try container.decode(Int64.self, forKey: .dateWindowDays)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.provider, forKey: .provider)
        try container.encode(self.pattern, forKey: .pattern)
        try container.encode(self.payoutIdPrefix, forKey: .payoutIdPrefix)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.dateWindowDays, forKey: .dateWindowDays)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case provider
        case pattern
        case payoutIdPrefix
        case bankAccountId
        case dateWindowDays
        case isActive
        case createdAt
    }
}
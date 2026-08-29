import Foundation

public struct PostV1BankFeedsConnectionsCompleteResponseAccountsItem: Codable, Hashable, Sendable {
    public let id: String
    public let connectionId: String
    public let bankAccountId: Nullable<String>
    public let externalId: String
    public let iban: Nullable<String>
    public let currency: String
    public let name: Nullable<String>
    public let product: Nullable<String>
    public let syncFrom: Nullable<String>
    public let lastSyncedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        connectionId: String,
        bankAccountId: Nullable<String>,
        externalId: String,
        iban: Nullable<String>,
        currency: String,
        name: Nullable<String>,
        product: Nullable<String>,
        syncFrom: Nullable<String>,
        lastSyncedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.connectionId = connectionId
        self.bankAccountId = bankAccountId
        self.externalId = externalId
        self.iban = iban
        self.currency = currency
        self.name = name
        self.product = product
        self.syncFrom = syncFrom
        self.lastSyncedAt = lastSyncedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.connectionId = try container.decode(String.self, forKey: .connectionId)
        self.bankAccountId = try container.decode(Nullable<String>.self, forKey: .bankAccountId)
        self.externalId = try container.decode(String.self, forKey: .externalId)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.product = try container.decode(Nullable<String>.self, forKey: .product)
        self.syncFrom = try container.decode(Nullable<String>.self, forKey: .syncFrom)
        self.lastSyncedAt = try container.decode(Nullable<String>.self, forKey: .lastSyncedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.connectionId, forKey: .connectionId)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.externalId, forKey: .externalId)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.product, forKey: .product)
        try container.encode(self.syncFrom, forKey: .syncFrom)
        try container.encode(self.lastSyncedAt, forKey: .lastSyncedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case connectionId
        case bankAccountId
        case externalId
        case iban
        case currency
        case name
        case product
        case syncFrom
        case lastSyncedAt
    }
}
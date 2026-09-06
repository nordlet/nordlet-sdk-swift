import Foundation

public struct PostV1BankFeedsConnectionsGetResponseAccountsItem: Codable, Hashable, Sendable {
    public let id: String
    public let connectionId: String
    public let bankAccountId: Nullable<String>
    public let importTemplateId: Nullable<String>
    public let syncSchedule: PostV1BankFeedsConnectionsGetResponseAccountsItemSyncSchedule
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
        importTemplateId: Nullable<String>,
        syncSchedule: PostV1BankFeedsConnectionsGetResponseAccountsItemSyncSchedule,
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
        self.importTemplateId = importTemplateId
        self.syncSchedule = syncSchedule
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
        self.importTemplateId = try container.decode(Nullable<String>.self, forKey: .importTemplateId)
        self.syncSchedule = try container.decode(PostV1BankFeedsConnectionsGetResponseAccountsItemSyncSchedule.self, forKey: .syncSchedule)
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
        try container.encode(self.importTemplateId, forKey: .importTemplateId)
        try container.encode(self.syncSchedule, forKey: .syncSchedule)
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
        case importTemplateId
        case syncSchedule
        case externalId
        case iban
        case currency
        case name
        case product
        case syncFrom
        case lastSyncedAt
    }
}
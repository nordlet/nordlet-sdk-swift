import Foundation

public struct PostV1BankAccountsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let iban: Nullable<String>
    public let currency: String
    public let accountCode: String
    public let isActive: Bool
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        iban: Nullable<String>,
        currency: String,
        accountCode: String,
        isActive: Bool,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.iban = iban
        self.currency = currency
        self.accountCode = accountCode
        self.isActive = isActive
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case iban
        case currency
        case accountCode
        case isActive
        case createdAt
    }
}
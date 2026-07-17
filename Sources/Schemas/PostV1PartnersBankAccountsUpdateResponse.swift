import Foundation

public struct PostV1PartnersBankAccountsUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let iban: String
    public let bankName: Nullable<String>
    public let bic: Nullable<String>
    public let currency: String
    public let isDefault: Bool
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        iban: String,
        bankName: Nullable<String>,
        bic: Nullable<String>,
        currency: String,
        isDefault: Bool,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.iban = iban
        self.bankName = bankName
        self.bic = bic
        self.currency = currency
        self.isDefault = isDefault
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.iban = try container.decode(String.self, forKey: .iban)
        self.bankName = try container.decode(Nullable<String>.self, forKey: .bankName)
        self.bic = try container.decode(Nullable<String>.self, forKey: .bic)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.isDefault = try container.decode(Bool.self, forKey: .isDefault)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.bankName, forKey: .bankName)
        try container.encode(self.bic, forKey: .bic)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.isDefault, forKey: .isDefault)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case iban
        case bankName
        case bic
        case currency
        case isDefault
        case createdAt
    }
}
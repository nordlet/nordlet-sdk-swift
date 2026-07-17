import Foundation

public struct PostV1BankTransactionsImportRequestTransactionsItem: Codable, Hashable, Sendable {
    public let date: String
    public let amount: String
    public let currency: String?
    public let counterpartyName: String?
    public let counterpartyIban: String?
    public let description: String?
    public let externalId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: String,
        amount: String,
        currency: String? = nil,
        counterpartyName: String? = nil,
        counterpartyIban: String? = nil,
        description: String? = nil,
        externalId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.amount = amount
        self.currency = currency
        self.counterpartyName = counterpartyName
        self.counterpartyIban = counterpartyIban
        self.description = description
        self.externalId = externalId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(String.self, forKey: .date)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
        self.counterpartyName = try container.decodeIfPresent(String.self, forKey: .counterpartyName)
        self.counterpartyIban = try container.decodeIfPresent(String.self, forKey: .counterpartyIban)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.externalId = try container.decodeIfPresent(String.self, forKey: .externalId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.currency, forKey: .currency)
        try container.encodeIfPresent(self.counterpartyName, forKey: .counterpartyName)
        try container.encodeIfPresent(self.counterpartyIban, forKey: .counterpartyIban)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.externalId, forKey: .externalId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case amount
        case currency
        case counterpartyName
        case counterpartyIban
        case description
        case externalId
    }
}
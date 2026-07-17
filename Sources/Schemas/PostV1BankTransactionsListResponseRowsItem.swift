import Foundation

public struct PostV1BankTransactionsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let bankAccountId: String
    public let date: String
    public let amount: String
    public let currency: String
    public let counterpartyName: Nullable<String>
    public let counterpartyIban: Nullable<String>
    public let description: Nullable<String>
    public let externalId: Nullable<String>
    public let status: PostV1BankTransactionsListResponseRowsItemStatus
    public let matchedDocumentType: Nullable<String>
    public let matchedDocumentId: Nullable<String>
    public let journalTransactionId: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        bankAccountId: String,
        date: String,
        amount: String,
        currency: String,
        counterpartyName: Nullable<String>,
        counterpartyIban: Nullable<String>,
        description: Nullable<String>,
        externalId: Nullable<String>,
        status: PostV1BankTransactionsListResponseRowsItemStatus,
        matchedDocumentType: Nullable<String>,
        matchedDocumentId: Nullable<String>,
        journalTransactionId: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.bankAccountId = bankAccountId
        self.date = date
        self.amount = amount
        self.currency = currency
        self.counterpartyName = counterpartyName
        self.counterpartyIban = counterpartyIban
        self.description = description
        self.externalId = externalId
        self.status = status
        self.matchedDocumentType = matchedDocumentType
        self.matchedDocumentId = matchedDocumentId
        self.journalTransactionId = journalTransactionId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
        self.date = try container.decode(String.self, forKey: .date)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.counterpartyName = try container.decode(Nullable<String>.self, forKey: .counterpartyName)
        self.counterpartyIban = try container.decode(Nullable<String>.self, forKey: .counterpartyIban)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.externalId = try container.decode(Nullable<String>.self, forKey: .externalId)
        self.status = try container.decode(PostV1BankTransactionsListResponseRowsItemStatus.self, forKey: .status)
        self.matchedDocumentType = try container.decode(Nullable<String>.self, forKey: .matchedDocumentType)
        self.matchedDocumentId = try container.decode(Nullable<String>.self, forKey: .matchedDocumentId)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.counterpartyName, forKey: .counterpartyName)
        try container.encode(self.counterpartyIban, forKey: .counterpartyIban)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.externalId, forKey: .externalId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.matchedDocumentType, forKey: .matchedDocumentType)
        try container.encode(self.matchedDocumentId, forKey: .matchedDocumentId)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case bankAccountId
        case date
        case amount
        case currency
        case counterpartyName
        case counterpartyIban
        case description
        case externalId
        case status
        case matchedDocumentType
        case matchedDocumentId
        case journalTransactionId
        case createdAt
    }
}
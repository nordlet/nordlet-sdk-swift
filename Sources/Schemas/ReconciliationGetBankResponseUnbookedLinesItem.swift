import Foundation

public struct ReconciliationGetBankResponseUnbookedLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let bankAccountId: String
    public let date: CalendarDate
    public let amount: String
    public let currency: String
    public let counterpartyName: Nullable<String>
    public let counterpartyIban: Nullable<String>
    public let partnerId: Nullable<String>
    public let partnerName: Nullable<String>
    public let description: Nullable<String>
    public let externalId: Nullable<String>
    public let status: ReconciliationGetBankResponseUnbookedLinesItemStatus
    public let matchedDocumentType: Nullable<String>
    public let matchedDocumentId: Nullable<String>
    public let journalTransactionId: Nullable<String>
    public let ignoreReason: Nullable<String>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        bankAccountId: String,
        date: CalendarDate,
        amount: String,
        currency: String,
        counterpartyName: Nullable<String>,
        counterpartyIban: Nullable<String>,
        partnerId: Nullable<String>,
        partnerName: Nullable<String>,
        description: Nullable<String>,
        externalId: Nullable<String>,
        status: ReconciliationGetBankResponseUnbookedLinesItemStatus,
        matchedDocumentType: Nullable<String>,
        matchedDocumentId: Nullable<String>,
        journalTransactionId: Nullable<String>,
        ignoreReason: Nullable<String>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.bankAccountId = bankAccountId
        self.date = date
        self.amount = amount
        self.currency = currency
        self.counterpartyName = counterpartyName
        self.counterpartyIban = counterpartyIban
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.description = description
        self.externalId = externalId
        self.status = status
        self.matchedDocumentType = matchedDocumentType
        self.matchedDocumentId = matchedDocumentId
        self.journalTransactionId = journalTransactionId
        self.ignoreReason = ignoreReason
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.counterpartyName = try container.decode(Nullable<String>.self, forKey: .counterpartyName)
        self.counterpartyIban = try container.decode(Nullable<String>.self, forKey: .counterpartyIban)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.partnerName = try container.decode(Nullable<String>.self, forKey: .partnerName)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.externalId = try container.decode(Nullable<String>.self, forKey: .externalId)
        self.status = try container.decode(ReconciliationGetBankResponseUnbookedLinesItemStatus.self, forKey: .status)
        self.matchedDocumentType = try container.decode(Nullable<String>.self, forKey: .matchedDocumentType)
        self.matchedDocumentId = try container.decode(Nullable<String>.self, forKey: .matchedDocumentId)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.ignoreReason = try container.decode(Nullable<String>.self, forKey: .ignoreReason)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
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
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.externalId, forKey: .externalId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.matchedDocumentType, forKey: .matchedDocumentType)
        try container.encode(self.matchedDocumentId, forKey: .matchedDocumentId)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.ignoreReason, forKey: .ignoreReason)
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
        case partnerId
        case partnerName
        case description
        case externalId
        case status
        case matchedDocumentType
        case matchedDocumentId
        case journalTransactionId
        case ignoreReason
        case createdAt
    }
}
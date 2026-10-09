import Foundation

public struct DeferralsListPurchasesResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let invoiceId: String
    public let invoiceLineId: String
    public let scheduleDate: CalendarDate
    public let description: Nullable<String>
    public let amount: String
    public let expenseAccountCode: String
    public let prepaidAccountCode: String
    public let status: DeferralsListPurchasesResponseRowsItemStatus
    public let journalTransactionId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        invoiceId: String,
        invoiceLineId: String,
        scheduleDate: CalendarDate,
        description: Nullable<String>,
        amount: String,
        expenseAccountCode: String,
        prepaidAccountCode: String,
        status: DeferralsListPurchasesResponseRowsItemStatus,
        journalTransactionId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.invoiceId = invoiceId
        self.invoiceLineId = invoiceLineId
        self.scheduleDate = scheduleDate
        self.description = description
        self.amount = amount
        self.expenseAccountCode = expenseAccountCode
        self.prepaidAccountCode = prepaidAccountCode
        self.status = status
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
        self.scheduleDate = try container.decode(CalendarDate.self, forKey: .scheduleDate)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.expenseAccountCode = try container.decode(String.self, forKey: .expenseAccountCode)
        self.prepaidAccountCode = try container.decode(String.self, forKey: .prepaidAccountCode)
        self.status = try container.decode(DeferralsListPurchasesResponseRowsItemStatus.self, forKey: .status)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
        try container.encode(self.scheduleDate, forKey: .scheduleDate)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.expenseAccountCode, forKey: .expenseAccountCode)
        try container.encode(self.prepaidAccountCode, forKey: .prepaidAccountCode)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case invoiceId
        case invoiceLineId
        case scheduleDate
        case description
        case amount
        case expenseAccountCode
        case prepaidAccountCode
        case status
        case journalTransactionId
    }
}
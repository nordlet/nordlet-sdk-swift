import Foundation

public struct PostV1CashOrdersListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1CashOrdersListResponseRowsItemType
    public let series: String
    public let number: Int64
    public let fullNumber: String
    public let date: String
    public let partnerId: Nullable<String>
    public let employeeId: Nullable<String>
    public let amount: String
    public let currency: String
    public let purpose: String
    public let cashAccountCode: String
    public let counterAccountCode: String
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1CashOrdersListResponseRowsItemType,
        series: String,
        number: Int64,
        fullNumber: String,
        date: String,
        partnerId: Nullable<String>,
        employeeId: Nullable<String>,
        amount: String,
        currency: String,
        purpose: String,
        cashAccountCode: String,
        counterAccountCode: String,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.series = series
        self.number = number
        self.fullNumber = fullNumber
        self.date = date
        self.partnerId = partnerId
        self.employeeId = employeeId
        self.amount = amount
        self.currency = currency
        self.purpose = purpose
        self.cashAccountCode = cashAccountCode
        self.counterAccountCode = counterAccountCode
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1CashOrdersListResponseRowsItemType.self, forKey: .type)
        self.series = try container.decode(String.self, forKey: .series)
        self.number = try container.decode(Int64.self, forKey: .number)
        self.fullNumber = try container.decode(String.self, forKey: .fullNumber)
        self.date = try container.decode(String.self, forKey: .date)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.employeeId = try container.decode(Nullable<String>.self, forKey: .employeeId)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.purpose = try container.decode(String.self, forKey: .purpose)
        self.cashAccountCode = try container.decode(String.self, forKey: .cashAccountCode)
        self.counterAccountCode = try container.decode(String.self, forKey: .counterAccountCode)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.series, forKey: .series)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.purpose, forKey: .purpose)
        try container.encode(self.cashAccountCode, forKey: .cashAccountCode)
        try container.encode(self.counterAccountCode, forKey: .counterAccountCode)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case series
        case number
        case fullNumber
        case date
        case partnerId
        case employeeId
        case amount
        case currency
        case purpose
        case cashAccountCode
        case counterAccountCode
        case journalTransactionId
        case notes
        case createdAt
    }
}
import Foundation

public struct RecognitionSchedulesListSalesResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let invoiceId: String
    public let invoiceLineId: String
    public let method: RecognitionSchedulesListSalesResponseRowsItemMethod
    public let status: RecognitionSchedulesListSalesResponseRowsItemStatus
    public let scheduleDate: Nullable<CalendarDate>
    public let description: Nullable<String>
    public let amount: String
    public let journalTransactionId: Nullable<String>
    public let recognizedAt: Nullable<Date>
    public let sortOrder: Int64
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        invoiceId: String,
        invoiceLineId: String,
        method: RecognitionSchedulesListSalesResponseRowsItemMethod,
        status: RecognitionSchedulesListSalesResponseRowsItemStatus,
        scheduleDate: Nullable<CalendarDate>,
        description: Nullable<String>,
        amount: String,
        journalTransactionId: Nullable<String>,
        recognizedAt: Nullable<Date>,
        sortOrder: Int64,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.invoiceId = invoiceId
        self.invoiceLineId = invoiceLineId
        self.method = method
        self.status = status
        self.scheduleDate = scheduleDate
        self.description = description
        self.amount = amount
        self.journalTransactionId = journalTransactionId
        self.recognizedAt = recognizedAt
        self.sortOrder = sortOrder
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
        self.method = try container.decode(RecognitionSchedulesListSalesResponseRowsItemMethod.self, forKey: .method)
        self.status = try container.decode(RecognitionSchedulesListSalesResponseRowsItemStatus.self, forKey: .status)
        self.scheduleDate = try container.decode(Nullable<CalendarDate>.self, forKey: .scheduleDate)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.recognizedAt = try container.decode(Nullable<Date>.self, forKey: .recognizedAt)
        self.sortOrder = try container.decode(Int64.self, forKey: .sortOrder)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.scheduleDate, forKey: .scheduleDate)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.recognizedAt, forKey: .recognizedAt)
        try container.encode(self.sortOrder, forKey: .sortOrder)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case invoiceId
        case invoiceLineId
        case method
        case status
        case scheduleDate
        case description
        case amount
        case journalTransactionId
        case recognizedAt
        case sortOrder
        case createdAt
    }
}
import Foundation

public struct RefundsCreatePosResponse: Codable, Hashable, Sendable {
    public let id: String
    public let shiftId: String
    public let receiptId: String
    public let date: CalendarDate
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let cashAmount: String
    public let cogsTotal: Nullable<String>
    public let journalTransactionId: Nullable<String>
    public let createdAt: Date
    public let lines: [RefundsCreatePosResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        shiftId: String,
        receiptId: String,
        date: CalendarDate,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        cashAmount: String,
        cogsTotal: Nullable<String>,
        journalTransactionId: Nullable<String>,
        createdAt: Date,
        lines: [RefundsCreatePosResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.shiftId = shiftId
        self.receiptId = receiptId
        self.date = date
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.cashAmount = cashAmount
        self.cogsTotal = cogsTotal
        self.journalTransactionId = journalTransactionId
        self.createdAt = createdAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.shiftId = try container.decode(String.self, forKey: .shiftId)
        self.receiptId = try container.decode(String.self, forKey: .receiptId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.cashAmount = try container.decode(String.self, forKey: .cashAmount)
        self.cogsTotal = try container.decode(Nullable<String>.self, forKey: .cogsTotal)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.lines = try container.decode([RefundsCreatePosResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.shiftId, forKey: .shiftId)
        try container.encode(self.receiptId, forKey: .receiptId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.cashAmount, forKey: .cashAmount)
        try container.encode(self.cogsTotal, forKey: .cogsTotal)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case shiftId
        case receiptId
        case date
        case netTotal
        case vatTotal
        case grossTotal
        case cashAmount
        case cogsTotal
        case journalTransactionId
        case createdAt
        case lines
    }
}
import Foundation

public struct ExpenseReportsCreateCashResponse: Codable, Hashable, Sendable {
    public let id: String
    public let number: String
    public let employeeId: String
    public let date: CalendarDate
    public let netTotal: String
    public let vatTotal: String
    public let total: String
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: Date
    public let lines: [ExpenseReportsCreateCashResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        number: String,
        employeeId: String,
        date: CalendarDate,
        netTotal: String,
        vatTotal: String,
        total: String,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: Date,
        lines: [ExpenseReportsCreateCashResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.number = number
        self.employeeId = employeeId
        self.date = date
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.total = total
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.createdAt = createdAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.number = try container.decode(String.self, forKey: .number)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.total = try container.decode(String.self, forKey: .total)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.lines = try container.decode([ExpenseReportsCreateCashResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case number
        case employeeId
        case date
        case netTotal
        case vatTotal
        case total
        case journalTransactionId
        case notes
        case createdAt
        case lines
    }
}
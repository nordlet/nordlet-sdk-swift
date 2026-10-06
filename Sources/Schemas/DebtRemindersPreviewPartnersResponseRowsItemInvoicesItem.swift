import Foundation

public struct DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem: Codable, Hashable, Sendable {
    public let id: String
    public let fullNumber: String
    public let issueDate: CalendarDate
    public let dueDate: CalendarDate
    public let currency: String
    public let remaining: String
    public let daysLate: Int64
    public let interest: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        fullNumber: String,
        issueDate: CalendarDate,
        dueDate: CalendarDate,
        currency: String,
        remaining: String,
        daysLate: Int64,
        interest: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.fullNumber = fullNumber
        self.issueDate = issueDate
        self.dueDate = dueDate
        self.currency = currency
        self.remaining = remaining
        self.daysLate = daysLate
        self.interest = interest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.fullNumber = try container.decode(String.self, forKey: .fullNumber)
        self.issueDate = try container.decode(CalendarDate.self, forKey: .issueDate)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.daysLate = try container.decode(Int64.self, forKey: .daysLate)
        self.interest = try container.decode(String.self, forKey: .interest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.daysLate, forKey: .daysLate)
        try container.encode(self.interest, forKey: .interest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fullNumber
        case issueDate
        case dueDate
        case currency
        case remaining
        case daysLate
        case interest
    }
}
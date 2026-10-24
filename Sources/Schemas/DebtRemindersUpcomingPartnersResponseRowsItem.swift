import Foundation

public struct DebtRemindersUpcomingPartnersResponseRowsItem: Codable, Hashable, Sendable {
    public let date: CalendarDate
    public let kind: DebtRemindersUpcomingPartnersResponseRowsItemKind
    public let invoiceId: String
    public let fullNumber: String
    public let partnerId: String
    public let partnerName: String
    public let dueDate: CalendarDate
    public let remaining: String
    public let currency: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: CalendarDate,
        kind: DebtRemindersUpcomingPartnersResponseRowsItemKind,
        invoiceId: String,
        fullNumber: String,
        partnerId: String,
        partnerName: String,
        dueDate: CalendarDate,
        remaining: String,
        currency: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.kind = kind
        self.invoiceId = invoiceId
        self.fullNumber = fullNumber
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.dueDate = dueDate
        self.remaining = remaining
        self.currency = currency
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.kind = try container.decode(DebtRemindersUpcomingPartnersResponseRowsItemKind.self, forKey: .kind)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.fullNumber = try container.decode(String.self, forKey: .fullNumber)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.currency, forKey: .currency)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case kind
        case invoiceId
        case fullNumber
        case partnerId
        case partnerName
        case dueDate
        case remaining
        case currency
    }
}
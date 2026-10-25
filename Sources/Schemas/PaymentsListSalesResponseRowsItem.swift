import Foundation

public struct PaymentsListSalesResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let date: CalendarDate
    public let invoiceId: String
    public let fullNumber: Nullable<String>
    public let partnerId: String
    public let partnerName: String
    public let amount: String
    public let currency: String
    public let method: PaymentsListSalesResponseRowsItemMethod
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        date: CalendarDate,
        invoiceId: String,
        fullNumber: Nullable<String>,
        partnerId: String,
        partnerName: String,
        amount: String,
        currency: String,
        method: PaymentsListSalesResponseRowsItemMethod,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.date = date
        self.invoiceId = invoiceId
        self.fullNumber = fullNumber
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.amount = amount
        self.currency = currency
        self.method = method
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.fullNumber = try container.decode(Nullable<String>.self, forKey: .fullNumber)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.method = try container.decode(PaymentsListSalesResponseRowsItemMethod.self, forKey: .method)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.method, forKey: .method)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case invoiceId
        case fullNumber
        case partnerId
        case partnerName
        case amount
        case currency
        case method
    }
}
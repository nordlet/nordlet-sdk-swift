import Foundation

public struct PostV1PartnersDebtRemindersListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let sentTo: String
    public let invoiceCount: Int64
    public let totalDue: String
    public let interestDue: String
    public let currency: String
    public let invoiceIds: [String]
    public let sentAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        sentTo: String,
        invoiceCount: Int64,
        totalDue: String,
        interestDue: String,
        currency: String,
        invoiceIds: [String],
        sentAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.sentTo = sentTo
        self.invoiceCount = invoiceCount
        self.totalDue = totalDue
        self.interestDue = interestDue
        self.currency = currency
        self.invoiceIds = invoiceIds
        self.sentAt = sentAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.sentTo = try container.decode(String.self, forKey: .sentTo)
        self.invoiceCount = try container.decode(Int64.self, forKey: .invoiceCount)
        self.totalDue = try container.decode(String.self, forKey: .totalDue)
        self.interestDue = try container.decode(String.self, forKey: .interestDue)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.invoiceIds = try container.decode([String].self, forKey: .invoiceIds)
        self.sentAt = try container.decode(String.self, forKey: .sentAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.sentTo, forKey: .sentTo)
        try container.encode(self.invoiceCount, forKey: .invoiceCount)
        try container.encode(self.totalDue, forKey: .totalDue)
        try container.encode(self.interestDue, forKey: .interestDue)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.invoiceIds, forKey: .invoiceIds)
        try container.encode(self.sentAt, forKey: .sentAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case sentTo
        case invoiceCount
        case totalDue
        case interestDue
        case currency
        case invoiceIds
        case sentAt
    }
}
import Foundation

public struct PostV1EcommerceOrdersReserveResponse: Codable, Hashable, Sendable {
    public let id: String
    public let channel: String
    public let externalRef: Nullable<String>
    public let partnerId: String
    public let warehouseId: Nullable<String>
    public let currency: String
    public let status: PostV1EcommerceOrdersReserveResponseStatus
    public let invoiceId: Nullable<String>
    public let shipToCountryCode: Nullable<String>
    public let marketplace: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let lines: [PostV1EcommerceOrdersReserveResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        channel: String,
        externalRef: Nullable<String>,
        partnerId: String,
        warehouseId: Nullable<String>,
        currency: String,
        status: PostV1EcommerceOrdersReserveResponseStatus,
        invoiceId: Nullable<String>,
        shipToCountryCode: Nullable<String>,
        marketplace: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        lines: [PostV1EcommerceOrdersReserveResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.channel = channel
        self.externalRef = externalRef
        self.partnerId = partnerId
        self.warehouseId = warehouseId
        self.currency = currency
        self.status = status
        self.invoiceId = invoiceId
        self.shipToCountryCode = shipToCountryCode
        self.marketplace = marketplace
        self.notes = notes
        self.createdAt = createdAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.channel = try container.decode(String.self, forKey: .channel)
        self.externalRef = try container.decode(Nullable<String>.self, forKey: .externalRef)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.status = try container.decode(PostV1EcommerceOrdersReserveResponseStatus.self, forKey: .status)
        self.invoiceId = try container.decode(Nullable<String>.self, forKey: .invoiceId)
        self.shipToCountryCode = try container.decode(Nullable<String>.self, forKey: .shipToCountryCode)
        self.marketplace = try container.decode(Nullable<String>.self, forKey: .marketplace)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.lines = try container.decode([PostV1EcommerceOrdersReserveResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.channel, forKey: .channel)
        try container.encode(self.externalRef, forKey: .externalRef)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.shipToCountryCode, forKey: .shipToCountryCode)
        try container.encode(self.marketplace, forKey: .marketplace)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case channel
        case externalRef
        case partnerId
        case warehouseId
        case currency
        case status
        case invoiceId
        case shipToCountryCode
        case marketplace
        case notes
        case createdAt
        case lines
    }
}
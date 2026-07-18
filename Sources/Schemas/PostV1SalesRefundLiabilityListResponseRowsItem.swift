import Foundation

public struct PostV1SalesRefundLiabilityListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let invoiceId: String
    public let invoiceFullNumber: Nullable<String>
    public let estimated: String
    public let consumed: String
    public let settlementRefunds: String
    public let remaining: String
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        invoiceId: String,
        invoiceFullNumber: Nullable<String>,
        estimated: String,
        consumed: String,
        settlementRefunds: String,
        remaining: String,
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.invoiceId = invoiceId
        self.invoiceFullNumber = invoiceFullNumber
        self.estimated = estimated
        self.consumed = consumed
        self.settlementRefunds = settlementRefunds
        self.remaining = remaining
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.invoiceFullNumber = try container.decode(Nullable<String>.self, forKey: .invoiceFullNumber)
        self.estimated = try container.decode(String.self, forKey: .estimated)
        self.consumed = try container.decode(String.self, forKey: .consumed)
        self.settlementRefunds = try container.decode(String.self, forKey: .settlementRefunds)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceFullNumber, forKey: .invoiceFullNumber)
        try container.encode(self.estimated, forKey: .estimated)
        try container.encode(self.consumed, forKey: .consumed)
        try container.encode(self.settlementRefunds, forKey: .settlementRefunds)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case invoiceId
        case invoiceFullNumber
        case estimated
        case consumed
        case settlementRefunds
        case remaining
        case createdAt
        case updatedAt
    }
}
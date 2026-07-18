import Foundation

public struct PostV1SalesRefundLiabilityTrueUpResponse: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let estimated: String
    public let consumed: String
    public let remaining: String
    public let delta: String
    public let journalTransactionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        estimated: String,
        consumed: String,
        remaining: String,
        delta: String,
        journalTransactionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.estimated = estimated
        self.consumed = consumed
        self.remaining = remaining
        self.delta = delta
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.estimated = try container.decode(String.self, forKey: .estimated)
        self.consumed = try container.decode(String.self, forKey: .consumed)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.delta = try container.decode(String.self, forKey: .delta)
        self.journalTransactionId = try container.decode(String.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.estimated, forKey: .estimated)
        try container.encode(self.consumed, forKey: .consumed)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.delta, forKey: .delta)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case estimated
        case consumed
        case remaining
        case delta
        case journalTransactionId
    }
}
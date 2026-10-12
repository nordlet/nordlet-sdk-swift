import Foundation

public struct TopupConfirmBillingResponseAutoTopUp: Codable, Hashable, Sendable {
    public let enabled: Bool
    public let amountCents: Int64
    public let pending: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        enabled: Bool,
        amountCents: Int64,
        pending: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.enabled = enabled
        self.amountCents = amountCents
        self.pending = pending
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.enabled = try container.decode(Bool.self, forKey: .enabled)
        self.amountCents = try container.decode(Int64.self, forKey: .amountCents)
        self.pending = try container.decode(Bool.self, forKey: .pending)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.enabled, forKey: .enabled)
        try container.encode(self.amountCents, forKey: .amountCents)
        try container.encode(self.pending, forKey: .pending)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case amountCents
        case pending
    }
}
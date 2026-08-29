import Foundation

public struct PostV1BillingAccountGetResponseTopUp: Codable, Hashable, Sendable {
    public let minCents: Int64
    public let maxCents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        minCents: Int64,
        maxCents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.minCents = minCents
        self.maxCents = maxCents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.minCents = try container.decode(Int64.self, forKey: .minCents)
        self.maxCents = try container.decode(Int64.self, forKey: .maxCents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.minCents, forKey: .minCents)
        try container.encode(self.maxCents, forKey: .maxCents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case minCents
        case maxCents
    }
}
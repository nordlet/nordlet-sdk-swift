import Foundation

public struct ReferralGetAccountResponseHistoryItem: Codable, Hashable, Sendable {
    public let points: Int64
    public let reason: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        points: Int64,
        reason: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.points = points
        self.reason = reason
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.points = try container.decode(Int64.self, forKey: .points)
        self.reason = try container.decode(String.self, forKey: .reason)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.points, forKey: .points)
        try container.encode(self.reason, forKey: .reason)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case points
        case reason
        case createdAt
    }
}
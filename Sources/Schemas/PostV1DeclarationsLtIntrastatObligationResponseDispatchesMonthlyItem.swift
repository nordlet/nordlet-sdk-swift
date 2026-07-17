import Foundation

public struct PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem: Codable, Hashable, Sendable {
    public let month: Int64
    public let value: String
    public let cumulative: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        month: Int64,
        value: String,
        cumulative: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.month = month
        self.value = value
        self.cumulative = cumulative
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.value = try container.decode(String.self, forKey: .value)
        self.cumulative = try container.decode(String.self, forKey: .cumulative)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.cumulative, forKey: .cumulative)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case month
        case value
        case cumulative
    }
}
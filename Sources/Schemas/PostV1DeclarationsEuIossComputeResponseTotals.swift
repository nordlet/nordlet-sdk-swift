import Foundation

public struct PostV1DeclarationsEuIossComputeResponseTotals: Codable, Hashable, Sendable {
    public let taxableAmount: String
    public let vatAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taxableAmount: String,
        vatAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taxableAmount = taxableAmount
        self.vatAmount = vatAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taxableAmount = try container.decode(String.self, forKey: .taxableAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taxableAmount
        case vatAmount
    }
}
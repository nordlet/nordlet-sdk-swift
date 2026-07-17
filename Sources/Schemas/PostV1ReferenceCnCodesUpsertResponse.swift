import Foundation

public struct PostV1ReferenceCnCodesUpsertResponse: Codable, Hashable, Sendable {
    public let upserted: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        upserted: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.upserted = upserted
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.upserted = try container.decode(Int64.self, forKey: .upserted)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.upserted, forKey: .upserted)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case upserted
    }
}
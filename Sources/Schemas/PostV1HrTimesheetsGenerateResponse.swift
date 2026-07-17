import Foundation

public struct PostV1HrTimesheetsGenerateResponse: Codable, Hashable, Sendable {
    public let generated: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        generated: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.generated = generated
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.generated = try container.decode(Int64.self, forKey: .generated)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.generated, forKey: .generated)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case generated
    }
}
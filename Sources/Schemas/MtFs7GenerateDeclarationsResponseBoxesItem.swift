import Foundation

public struct MtFs7GenerateDeclarationsResponseBoxesItem: Codable, Hashable, Sendable {
    public let box: String
    public let description: String
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        box: String,
        description: String,
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.box = box
        self.description = description
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.box = try container.decode(String.self, forKey: .box)
        self.description = try container.decode(String.self, forKey: .description)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.box, forKey: .box)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case box
        case description
        case value
    }
}
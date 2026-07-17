import Foundation

public struct PostV1DeclarationsLtFr0600ComputeResponseFieldsItem: Codable, Hashable, Sendable {
    public let field: String
    public let label: String
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: String,
        label: String,
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.label = label
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(String.self, forKey: .field)
        self.label = try container.decode(String.self, forKey: .label)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case label
        case value
    }
}
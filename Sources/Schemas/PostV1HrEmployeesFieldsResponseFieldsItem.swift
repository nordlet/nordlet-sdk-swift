import Foundation

public struct PostV1HrEmployeesFieldsResponseFieldsItem: Codable, Hashable, Sendable {
    public let key: String
    public let kind: PostV1HrEmployeesFieldsResponseFieldsItemKind
    public let options: [String]?
    public let maxLength: Int64?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: String,
        kind: PostV1HrEmployeesFieldsResponseFieldsItemKind,
        options: [String]? = nil,
        maxLength: Int64? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.kind = kind
        self.options = options
        self.maxLength = maxLength
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(String.self, forKey: .key)
        self.kind = try container.decode(PostV1HrEmployeesFieldsResponseFieldsItemKind.self, forKey: .kind)
        self.options = try container.decodeIfPresent([String].self, forKey: .options)
        self.maxLength = try container.decodeIfPresent(Int64.self, forKey: .maxLength)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.maxLength, forKey: .maxLength)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case kind
        case options
        case maxLength
    }
}
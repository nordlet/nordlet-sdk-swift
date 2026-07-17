import Foundation

public struct PostV1DeclarationsConfigsListResponseRowsItemFieldsItem: Codable, Hashable, Sendable {
    public let key: String
    public let kind: PostV1DeclarationsConfigsListResponseRowsItemFieldsItemKind
    public let multiline: Bool?
    public let options: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: String,
        kind: PostV1DeclarationsConfigsListResponseRowsItemFieldsItemKind,
        multiline: Bool? = nil,
        options: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.kind = kind
        self.multiline = multiline
        self.options = options
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(String.self, forKey: .key)
        self.kind = try container.decode(PostV1DeclarationsConfigsListResponseRowsItemFieldsItemKind.self, forKey: .kind)
        self.multiline = try container.decodeIfPresent(Bool.self, forKey: .multiline)
        self.options = try container.decodeIfPresent([String].self, forKey: .options)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeIfPresent(self.multiline, forKey: .multiline)
        try container.encodeIfPresent(self.options, forKey: .options)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case kind
        case multiline
        case options
    }
}
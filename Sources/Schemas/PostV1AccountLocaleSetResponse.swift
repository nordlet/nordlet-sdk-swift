import Foundation

public struct PostV1AccountLocaleSetResponse: Codable, Hashable, Sendable {
    public let locale: String
    public let scope: PostV1AccountLocaleSetResponseScope
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        locale: String,
        scope: PostV1AccountLocaleSetResponseScope,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.locale = locale
        self.scope = scope
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.locale = try container.decode(String.self, forKey: .locale)
        self.scope = try container.decode(PostV1AccountLocaleSetResponseScope.self, forKey: .scope)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.scope, forKey: .scope)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case locale
        case scope
    }
}
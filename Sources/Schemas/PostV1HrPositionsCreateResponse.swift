import Foundation

public struct PostV1HrPositionsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let code: Nullable<String>
    public let name: String
    public let translations: Nullable<[String: Nullable<PostV1HrPositionsCreateResponseTranslationsValue>]>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: Nullable<String>,
        name: String,
        translations: Nullable<[String: Nullable<PostV1HrPositionsCreateResponseTranslationsValue>]>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.translations = translations
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.translations = try container.decode(Nullable<[String: Nullable<PostV1HrPositionsCreateResponseTranslationsValue>]>.self, forKey: .translations)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.translations, forKey: .translations)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case translations
    }
}
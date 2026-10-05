import Foundation

extension Requests {
    public struct PositionsUpdateHrRequest: Codable, Hashable, Sendable {
        public let id: String
        public let code: String?
        public let name: String?
        public let translations: Nullable<[String: Nullable<PositionsUpdateHrRequestTranslationsValue>]>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            code: String? = nil,
            name: String? = nil,
            translations: Nullable<[String: Nullable<PositionsUpdateHrRequestTranslationsValue>]>? = nil,
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
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.translations = try container.decodeNullableIfPresent([String: Nullable<PositionsUpdateHrRequestTranslationsValue>].self, forKey: .translations)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.translations, forKey: .translations)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case code
            case name
            case translations
        }
    }
}
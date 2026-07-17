import Foundation

extension Requests {
    public struct PostV1HrPositionsCreateRequest: Codable, Hashable, Sendable {
        public let code: String?
        public let name: String
        public let translations: [String: PostV1HrPositionsCreateRequestTranslationsValue]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String? = nil,
            name: String,
            translations: [String: PostV1HrPositionsCreateRequestTranslationsValue]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.translations = translations
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.translations = try container.decodeIfPresent([String: PostV1HrPositionsCreateRequestTranslationsValue].self, forKey: .translations)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.translations, forKey: .translations)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case translations
        }
    }
}
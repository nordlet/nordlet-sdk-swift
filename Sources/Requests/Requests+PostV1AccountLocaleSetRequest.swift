import Foundation

extension Requests {
    public struct PostV1AccountLocaleSetRequest: Codable, Hashable, Sendable {
        public let locale: PostV1AccountLocaleSetRequestLocale
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            locale: PostV1AccountLocaleSetRequestLocale,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.locale = locale
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.locale = try container.decode(PostV1AccountLocaleSetRequestLocale.self, forKey: .locale)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.locale, forKey: .locale)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case locale
        }
    }
}
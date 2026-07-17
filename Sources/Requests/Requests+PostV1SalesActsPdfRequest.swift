import Foundation

extension Requests {
    public struct PostV1SalesActsPdfRequest: Codable, Hashable, Sendable {
        public let id: String
        public let locale: PostV1SalesActsPdfRequestLocale?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            locale: PostV1SalesActsPdfRequestLocale? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.locale = locale
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.locale = try container.decodeIfPresent(PostV1SalesActsPdfRequestLocale.self, forKey: .locale)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.locale, forKey: .locale)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case locale
        }
    }
}
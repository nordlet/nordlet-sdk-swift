import Foundation

extension Requests {
    public struct EmailChangeRequestAccountRequest: Codable, Hashable, Sendable {
        public let newEmail: String
        public let locale: EmailChangeRequestAccountRequestLocale?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            newEmail: String,
            locale: EmailChangeRequestAccountRequestLocale? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.newEmail = newEmail
            self.locale = locale
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.newEmail = try container.decode(String.self, forKey: .newEmail)
            self.locale = try container.decodeIfPresent(EmailChangeRequestAccountRequestLocale.self, forKey: .locale)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.newEmail, forKey: .newEmail)
            try container.encodeIfPresent(self.locale, forKey: .locale)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case newEmail
            case locale
        }
    }
}
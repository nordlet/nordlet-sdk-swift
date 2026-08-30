import Foundation

extension Requests {
    public struct PostV1AccountLoginLinkRequestRequest: Codable, Hashable, Sendable {
        public let email: String
        public let locale: PostV1AccountLoginLinkRequestRequestLocale?
        public let acceptTerms: Bool?
        public let acceptDpa: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            email: String,
            locale: PostV1AccountLoginLinkRequestRequestLocale? = nil,
            acceptTerms: Bool? = nil,
            acceptDpa: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.email = email
            self.locale = locale
            self.acceptTerms = acceptTerms
            self.acceptDpa = acceptDpa
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.email = try container.decode(String.self, forKey: .email)
            self.locale = try container.decodeIfPresent(PostV1AccountLoginLinkRequestRequestLocale.self, forKey: .locale)
            self.acceptTerms = try container.decodeIfPresent(Bool.self, forKey: .acceptTerms)
            self.acceptDpa = try container.decodeIfPresent(Bool.self, forKey: .acceptDpa)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.email, forKey: .email)
            try container.encodeIfPresent(self.locale, forKey: .locale)
            try container.encodeIfPresent(self.acceptTerms, forKey: .acceptTerms)
            try container.encodeIfPresent(self.acceptDpa, forKey: .acceptDpa)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case email
            case locale
            case acceptTerms
            case acceptDpa
        }
    }
}
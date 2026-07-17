import Foundation

extension Requests {
    public struct PostV1AccountInvitesAcceptRequest: Codable, Hashable, Sendable {
        public let token: String
        public let name: String?
        public let locale: PostV1AccountInvitesAcceptRequestLocale?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            token: String,
            name: String? = nil,
            locale: PostV1AccountInvitesAcceptRequestLocale? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.token = token
            self.name = name
            self.locale = locale
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.token = try container.decode(String.self, forKey: .token)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.locale = try container.decodeIfPresent(PostV1AccountInvitesAcceptRequestLocale.self, forKey: .locale)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.token, forKey: .token)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.locale, forKey: .locale)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case token
            case name
            case locale
        }
    }
}
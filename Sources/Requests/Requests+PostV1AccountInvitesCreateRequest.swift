import Foundation

extension Requests {
    public struct PostV1AccountInvitesCreateRequest: Codable, Hashable, Sendable {
        public let email: String
        public let role: PostV1AccountInvitesCreateRequestRole
        public let locale: PostV1AccountInvitesCreateRequestLocale?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            email: String,
            role: PostV1AccountInvitesCreateRequestRole,
            locale: PostV1AccountInvitesCreateRequestLocale? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.email = email
            self.role = role
            self.locale = locale
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.email = try container.decode(String.self, forKey: .email)
            self.role = try container.decode(PostV1AccountInvitesCreateRequestRole.self, forKey: .role)
            self.locale = try container.decodeIfPresent(PostV1AccountInvitesCreateRequestLocale.self, forKey: .locale)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.email, forKey: .email)
            try container.encode(self.role, forKey: .role)
            try container.encodeIfPresent(self.locale, forKey: .locale)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case email
            case role
            case locale
        }
    }
}
import Foundation

extension Requests {
    public struct OauthAuthorizeDescribeAccountRequest: Codable, Hashable, Sendable {
        public let clientId: String
        public let redirectUri: String?
        public let responseType: String?
        public let codeChallenge: String?
        public let codeChallengeMethod: String?
        public let state: String?
        public let scope: String?
        public let resource: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            clientId: String,
            redirectUri: String? = nil,
            responseType: String? = nil,
            codeChallenge: String? = nil,
            codeChallengeMethod: String? = nil,
            state: String? = nil,
            scope: String? = nil,
            resource: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.clientId = clientId
            self.redirectUri = redirectUri
            self.responseType = responseType
            self.codeChallenge = codeChallenge
            self.codeChallengeMethod = codeChallengeMethod
            self.state = state
            self.scope = scope
            self.resource = resource
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.clientId = try container.decode(String.self, forKey: .clientId)
            self.redirectUri = try container.decodeIfPresent(String.self, forKey: .redirectUri)
            self.responseType = try container.decodeIfPresent(String.self, forKey: .responseType)
            self.codeChallenge = try container.decodeIfPresent(String.self, forKey: .codeChallenge)
            self.codeChallengeMethod = try container.decodeIfPresent(String.self, forKey: .codeChallengeMethod)
            self.state = try container.decodeIfPresent(String.self, forKey: .state)
            self.scope = try container.decodeIfPresent(String.self, forKey: .scope)
            self.resource = try container.decodeIfPresent(String.self, forKey: .resource)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.clientId, forKey: .clientId)
            try container.encodeIfPresent(self.redirectUri, forKey: .redirectUri)
            try container.encodeIfPresent(self.responseType, forKey: .responseType)
            try container.encodeIfPresent(self.codeChallenge, forKey: .codeChallenge)
            try container.encodeIfPresent(self.codeChallengeMethod, forKey: .codeChallengeMethod)
            try container.encodeIfPresent(self.state, forKey: .state)
            try container.encodeIfPresent(self.scope, forKey: .scope)
            try container.encodeIfPresent(self.resource, forKey: .resource)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case clientId
            case redirectUri
            case responseType
            case codeChallenge
            case codeChallengeMethod
            case state
            case scope
            case resource
        }
    }
}
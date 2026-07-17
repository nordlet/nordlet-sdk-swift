import Foundation

extension Requests {
    public struct PostV1PublicIntegrationRequestsRequest: Codable, Hashable, Sendable {
        public let integration: String
        public let name: String
        public let company: String?
        public let email: String
        public let details: String?
        public let website: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            integration: String,
            name: String,
            company: String? = nil,
            email: String,
            details: String? = nil,
            website: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.integration = integration
            self.name = name
            self.company = company
            self.email = email
            self.details = details
            self.website = website
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.integration = try container.decode(String.self, forKey: .integration)
            self.name = try container.decode(String.self, forKey: .name)
            self.company = try container.decodeIfPresent(String.self, forKey: .company)
            self.email = try container.decode(String.self, forKey: .email)
            self.details = try container.decodeIfPresent(String.self, forKey: .details)
            self.website = try container.decodeIfPresent(String.self, forKey: .website)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.integration, forKey: .integration)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.company, forKey: .company)
            try container.encode(self.email, forKey: .email)
            try container.encodeIfPresent(self.details, forKey: .details)
            try container.encodeIfPresent(self.website, forKey: .website)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case integration
            case name
            case company
            case email
            case details
            case website
        }
    }
}
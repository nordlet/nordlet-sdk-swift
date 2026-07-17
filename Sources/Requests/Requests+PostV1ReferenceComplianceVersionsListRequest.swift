import Foundation

extension Requests {
    public struct PostV1ReferenceComplianceVersionsListRequest: Codable, Hashable, Sendable {
        public let country: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            country: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.country = country
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.country = try container.decodeIfPresent(String.self, forKey: .country)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.country, forKey: .country)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case country
        }
    }
}
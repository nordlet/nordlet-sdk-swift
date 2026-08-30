import Foundation

extension Requests {
    public struct PostV1AccountDeleteRequest: Codable, Hashable, Sendable {
        public let confirmEmail: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            confirmEmail: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.confirmEmail = confirmEmail
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.confirmEmail = try container.decode(String.self, forKey: .confirmEmail)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.confirmEmail, forKey: .confirmEmail)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case confirmEmail
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1AccountConsentAcceptRequest: Codable, Hashable, Sendable {
        public let acceptTerms: Bool
        public let acceptDpa: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            acceptTerms: Bool,
            acceptDpa: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.acceptTerms = acceptTerms
            self.acceptDpa = acceptDpa
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.acceptTerms = try container.decode(Bool.self, forKey: .acceptTerms)
            self.acceptDpa = try container.decode(Bool.self, forKey: .acceptDpa)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.acceptTerms, forKey: .acceptTerms)
            try container.encode(self.acceptDpa, forKey: .acceptDpa)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case acceptTerms
            case acceptDpa
        }
    }
}
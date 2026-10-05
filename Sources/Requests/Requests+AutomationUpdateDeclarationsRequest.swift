import Foundation

extension Requests {
    public struct AutomationUpdateDeclarationsRequest: Codable, Hashable, Sendable {
        public let ruleKey: String
        public let enabled: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            ruleKey: String,
            enabled: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.ruleKey = ruleKey
            self.enabled = enabled
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.ruleKey = try container.decode(String.self, forKey: .ruleKey)
            self.enabled = try container.decode(Bool.self, forKey: .enabled)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.ruleKey, forKey: .ruleKey)
            try container.encode(self.enabled, forKey: .enabled)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case ruleKey
            case enabled
        }
    }
}
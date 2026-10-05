import Foundation

extension Requests {
    public struct DeReturnsGenerateDeclarationsRequest: Codable, Hashable, Sendable {
        public let ruleKey: DeReturnsGenerateDeclarationsRequestRuleKey
        public let period: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            ruleKey: DeReturnsGenerateDeclarationsRequestRuleKey,
            period: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.ruleKey = ruleKey
            self.period = period
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.ruleKey = try container.decode(DeReturnsGenerateDeclarationsRequestRuleKey.self, forKey: .ruleKey)
            self.period = try container.decode(String.self, forKey: .period)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.ruleKey, forKey: .ruleKey)
            try container.encode(self.period, forKey: .period)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case ruleKey
            case period
        }
    }
}
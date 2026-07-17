import Foundation

extension Requests {
    public struct PostV1LedgerPostingRulesUpdateRequest: Codable, Hashable, Sendable {
        public let rules: [PostV1LedgerPostingRulesUpdateRequestRulesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            rules: [PostV1LedgerPostingRulesUpdateRequestRulesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.rules = rules
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.rules = try container.decode([PostV1LedgerPostingRulesUpdateRequestRulesItem].self, forKey: .rules)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.rules, forKey: .rules)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case rules
        }
    }
}
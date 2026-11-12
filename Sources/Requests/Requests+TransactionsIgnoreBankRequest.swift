import Foundation

extension Requests {
    public struct TransactionsIgnoreBankRequest: Codable, Hashable, Sendable {
        public let transactionId: String
        public let reason: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            transactionId: String,
            reason: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.transactionId = transactionId
            self.reason = reason
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.transactionId = try container.decode(String.self, forKey: .transactionId)
            self.reason = try container.decode(String.self, forKey: .reason)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.transactionId, forKey: .transactionId)
            try container.encode(self.reason, forKey: .reason)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case transactionId
            case reason
        }
    }
}
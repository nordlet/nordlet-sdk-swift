import Foundation

extension Requests {
    public struct PostV1BankTransactionsSuggestMatchesRequest: Codable, Hashable, Sendable {
        public let transactionId: String
        public let limit: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            transactionId: String,
            limit: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.transactionId = transactionId
            self.limit = limit
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.transactionId = try container.decode(String.self, forKey: .transactionId)
            self.limit = try container.decodeIfPresent(Int64.self, forKey: .limit)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.transactionId, forKey: .transactionId)
            try container.encodeIfPresent(self.limit, forKey: .limit)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case transactionId
            case limit
        }
    }
}
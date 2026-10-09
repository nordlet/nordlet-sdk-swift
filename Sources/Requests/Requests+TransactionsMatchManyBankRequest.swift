import Foundation

extension Requests {
    public struct TransactionsMatchManyBankRequest: Codable, Hashable, Sendable {
        public let transactionId: String
        public let allocations: [TransactionsMatchManyBankRequestAllocationsItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            transactionId: String,
            allocations: [TransactionsMatchManyBankRequestAllocationsItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.transactionId = transactionId
            self.allocations = allocations
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.transactionId = try container.decode(String.self, forKey: .transactionId)
            self.allocations = try container.decode([TransactionsMatchManyBankRequestAllocationsItem].self, forKey: .allocations)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.transactionId, forKey: .transactionId)
            try container.encode(self.allocations, forKey: .allocations)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case transactionId
            case allocations
        }
    }
}
import Foundation

extension Requests {
    public struct TaxProvisionPostLedgerRequest: Codable, Hashable, Sendable {
        public let fiscalYear: Int64
        public let amount: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fiscalYear: Int64,
            amount: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fiscalYear = fiscalYear
            self.amount = amount
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fiscalYear = try container.decode(Int64.self, forKey: .fiscalYear)
            self.amount = try container.decodeIfPresent(String.self, forKey: .amount)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fiscalYear, forKey: .fiscalYear)
            try container.encodeIfPresent(self.amount, forKey: .amount)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fiscalYear
            case amount
        }
    }
}
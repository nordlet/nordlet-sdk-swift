import Foundation

extension Requests {
    public struct ItTfrRevaluationPostDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let foiPreviousDecember: String
        public let foiDecember: String
        public let funds: [ItTfrRevaluationPostDeclarationsRequestFundsItem]
        public let expenseAccountCode: String
        public let fundAccountCode: String
        public let taxAccountCode: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            foiPreviousDecember: String,
            foiDecember: String,
            funds: [ItTfrRevaluationPostDeclarationsRequestFundsItem],
            expenseAccountCode: String,
            fundAccountCode: String,
            taxAccountCode: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.foiPreviousDecember = foiPreviousDecember
            self.foiDecember = foiDecember
            self.funds = funds
            self.expenseAccountCode = expenseAccountCode
            self.fundAccountCode = fundAccountCode
            self.taxAccountCode = taxAccountCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.foiPreviousDecember = try container.decode(String.self, forKey: .foiPreviousDecember)
            self.foiDecember = try container.decode(String.self, forKey: .foiDecember)
            self.funds = try container.decode([ItTfrRevaluationPostDeclarationsRequestFundsItem].self, forKey: .funds)
            self.expenseAccountCode = try container.decode(String.self, forKey: .expenseAccountCode)
            self.fundAccountCode = try container.decode(String.self, forKey: .fundAccountCode)
            self.taxAccountCode = try container.decode(String.self, forKey: .taxAccountCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.foiPreviousDecember, forKey: .foiPreviousDecember)
            try container.encode(self.foiDecember, forKey: .foiDecember)
            try container.encode(self.funds, forKey: .funds)
            try container.encode(self.expenseAccountCode, forKey: .expenseAccountCode)
            try container.encode(self.fundAccountCode, forKey: .fundAccountCode)
            try container.encode(self.taxAccountCode, forKey: .taxAccountCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case foiPreviousDecember
            case foiDecember
            case funds
            case expenseAccountCode
            case fundAccountCode
            case taxAccountCode
        }
    }
}
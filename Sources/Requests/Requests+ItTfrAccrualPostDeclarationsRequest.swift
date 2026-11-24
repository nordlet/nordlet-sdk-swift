import Foundation

extension Requests {
    public struct ItTfrAccrualPostDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let includePaymentTypes: [String]?
        public let expenseAccountCode: String
        public let fundAccountCode: String?
        public let payableAccountCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            includePaymentTypes: [String]? = nil,
            expenseAccountCode: String,
            fundAccountCode: String? = nil,
            payableAccountCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.includePaymentTypes = includePaymentTypes
            self.expenseAccountCode = expenseAccountCode
            self.fundAccountCode = fundAccountCode
            self.payableAccountCode = payableAccountCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.includePaymentTypes = try container.decodeIfPresent([String].self, forKey: .includePaymentTypes)
            self.expenseAccountCode = try container.decode(String.self, forKey: .expenseAccountCode)
            self.fundAccountCode = try container.decodeIfPresent(String.self, forKey: .fundAccountCode)
            self.payableAccountCode = try container.decodeIfPresent(String.self, forKey: .payableAccountCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encodeIfPresent(self.includePaymentTypes, forKey: .includePaymentTypes)
            try container.encode(self.expenseAccountCode, forKey: .expenseAccountCode)
            try container.encodeIfPresent(self.fundAccountCode, forKey: .fundAccountCode)
            try container.encodeIfPresent(self.payableAccountCode, forKey: .payableAccountCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case includePaymentTypes
            case expenseAccountCode
            case fundAccountCode
            case payableAccountCode
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1DeclarationsTaxPaymentsListRequest: Codable, Hashable, Sendable {
        public let tax: PostV1DeclarationsTaxPaymentsListRequestTax
        public let year: Int64
        public let month: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            tax: PostV1DeclarationsTaxPaymentsListRequestTax,
            year: Int64,
            month: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.tax = tax
            self.year = year
            self.month = month
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.tax = try container.decode(PostV1DeclarationsTaxPaymentsListRequestTax.self, forKey: .tax)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decodeIfPresent(Int64.self, forKey: .month)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.tax, forKey: .tax)
            try container.encode(self.year, forKey: .year)
            try container.encodeIfPresent(self.month, forKey: .month)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case tax
            case year
            case month
        }
    }
}
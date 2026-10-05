import Foundation

extension Requests {
    public struct TaxPaymentsCreateDeclarationsRequest: Codable, Hashable, Sendable {
        public let tax: TaxPaymentsCreateDeclarationsRequestTax
        public let year: Int64
        public let month: Int64?
        public let kind: TaxPaymentsCreateDeclarationsRequestKind
        public let amount: String
        public let paidOn: CalendarDate
        public let reference: String?
        public let description: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            tax: TaxPaymentsCreateDeclarationsRequestTax,
            year: Int64,
            month: Int64? = nil,
            kind: TaxPaymentsCreateDeclarationsRequestKind,
            amount: String,
            paidOn: CalendarDate,
            reference: String? = nil,
            description: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.tax = tax
            self.year = year
            self.month = month
            self.kind = kind
            self.amount = amount
            self.paidOn = paidOn
            self.reference = reference
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.tax = try container.decode(TaxPaymentsCreateDeclarationsRequestTax.self, forKey: .tax)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decodeIfPresent(Int64.self, forKey: .month)
            self.kind = try container.decode(TaxPaymentsCreateDeclarationsRequestKind.self, forKey: .kind)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.paidOn = try container.decode(CalendarDate.self, forKey: .paidOn)
            self.reference = try container.decodeIfPresent(String.self, forKey: .reference)
            self.description = try container.decode(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.tax, forKey: .tax)
            try container.encode(self.year, forKey: .year)
            try container.encodeIfPresent(self.month, forKey: .month)
            try container.encode(self.kind, forKey: .kind)
            try container.encode(self.amount, forKey: .amount)
            try container.encode(self.paidOn, forKey: .paidOn)
            try container.encodeIfPresent(self.reference, forKey: .reference)
            try container.encode(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case tax
            case year
            case month
            case kind
            case amount
            case paidOn
            case reference
            case description
        }
    }
}
import Foundation

extension Requests {
    public struct GbCorporationTaxComputeDeclarationsRequest: Codable, Hashable, Sendable {
        public let periodStart: CalendarDate
        public let periodEnd: CalendarDate
        public let taxableTotalProfits: String
        public let exemptDistributions: String?
        public let associatedCompanies: Int64?
        public let closeInvestmentHolding: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            periodStart: CalendarDate,
            periodEnd: CalendarDate,
            taxableTotalProfits: String,
            exemptDistributions: String? = nil,
            associatedCompanies: Int64? = nil,
            closeInvestmentHolding: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.periodStart = periodStart
            self.periodEnd = periodEnd
            self.taxableTotalProfits = taxableTotalProfits
            self.exemptDistributions = exemptDistributions
            self.associatedCompanies = associatedCompanies
            self.closeInvestmentHolding = closeInvestmentHolding
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.periodStart = try container.decode(CalendarDate.self, forKey: .periodStart)
            self.periodEnd = try container.decode(CalendarDate.self, forKey: .periodEnd)
            self.taxableTotalProfits = try container.decode(String.self, forKey: .taxableTotalProfits)
            self.exemptDistributions = try container.decodeIfPresent(String.self, forKey: .exemptDistributions)
            self.associatedCompanies = try container.decodeIfPresent(Int64.self, forKey: .associatedCompanies)
            self.closeInvestmentHolding = try container.decodeIfPresent(Bool.self, forKey: .closeInvestmentHolding)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.periodStart, forKey: .periodStart)
            try container.encode(self.periodEnd, forKey: .periodEnd)
            try container.encode(self.taxableTotalProfits, forKey: .taxableTotalProfits)
            try container.encodeIfPresent(self.exemptDistributions, forKey: .exemptDistributions)
            try container.encodeIfPresent(self.associatedCompanies, forKey: .associatedCompanies)
            try container.encodeIfPresent(self.closeInvestmentHolding, forKey: .closeInvestmentHolding)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case periodStart
            case periodEnd
            case taxableTotalProfits
            case exemptDistributions
            case associatedCompanies
            case closeInvestmentHolding
        }
    }
}
import Foundation

extension Requests {
    public struct AnnualAccountsDistributionsCreateDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let decidedOn: CalendarDate
        public let kind: AnnualAccountsDistributionsCreateDeclarationsRequestKind
        public let amount: String
        public let description: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            decidedOn: CalendarDate,
            kind: AnnualAccountsDistributionsCreateDeclarationsRequestKind,
            amount: String,
            description: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.decidedOn = decidedOn
            self.kind = kind
            self.amount = amount
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.decidedOn = try container.decode(CalendarDate.self, forKey: .decidedOn)
            self.kind = try container.decode(AnnualAccountsDistributionsCreateDeclarationsRequestKind.self, forKey: .kind)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.decidedOn, forKey: .decidedOn)
            try container.encode(self.kind, forKey: .kind)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case decidedOn
            case kind
            case amount
            case description
        }
    }
}
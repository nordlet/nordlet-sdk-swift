import Foundation

extension Requests {
    public struct TaxPaymentsUpdateDeclarationsRequest: Codable, Hashable, Sendable {
        public let id: String
        public let kind: TaxPaymentsUpdateDeclarationsRequestKind?
        public let amount: String?
        public let paidOn: CalendarDate?
        public let reference: String?
        public let description: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            kind: TaxPaymentsUpdateDeclarationsRequestKind? = nil,
            amount: String? = nil,
            paidOn: CalendarDate? = nil,
            reference: String? = nil,
            description: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.kind = kind
            self.amount = amount
            self.paidOn = paidOn
            self.reference = reference
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.kind = try container.decodeIfPresent(TaxPaymentsUpdateDeclarationsRequestKind.self, forKey: .kind)
            self.amount = try container.decodeIfPresent(String.self, forKey: .amount)
            self.paidOn = try container.decodeIfPresent(CalendarDate.self, forKey: .paidOn)
            self.reference = try container.decodeIfPresent(String.self, forKey: .reference)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.kind, forKey: .kind)
            try container.encodeIfPresent(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.paidOn, forKey: .paidOn)
            try container.encodeIfPresent(self.reference, forKey: .reference)
            try container.encodeIfPresent(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case kind
            case amount
            case paidOn
            case reference
            case description
        }
    }
}
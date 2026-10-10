import Foundation

extension Requests {
    public struct InvoicesApplyAdvanceSalesRequest: Codable, Hashable, Sendable {
        public let advanceId: String
        public let invoiceId: String
        public let date: CalendarDate?
        /// Gross amount of the advance to apply; defaults to the unapplied advance or the unpaid balance of the invoice, whichever is smaller
        public let amount: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            advanceId: String,
            invoiceId: String,
            date: CalendarDate? = nil,
            amount: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.advanceId = advanceId
            self.invoiceId = invoiceId
            self.date = date
            self.amount = amount
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.advanceId = try container.decode(String.self, forKey: .advanceId)
            self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
            self.date = try container.decodeIfPresent(CalendarDate.self, forKey: .date)
            self.amount = try container.decodeIfPresent(String.self, forKey: .amount)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.advanceId, forKey: .advanceId)
            try container.encode(self.invoiceId, forKey: .invoiceId)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.amount, forKey: .amount)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case advanceId
            case invoiceId
            case date
            case amount
        }
    }
}
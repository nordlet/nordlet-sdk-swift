import Foundation

extension Requests {
    public struct InvoicesProposeLinesPurchasesRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let documentDate: CalendarDate?
        public let lines: [InvoicesProposeLinesPurchasesRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            documentDate: CalendarDate? = nil,
            lines: [InvoicesProposeLinesPurchasesRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.documentDate = documentDate
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.documentDate = try container.decodeIfPresent(CalendarDate.self, forKey: .documentDate)
            self.lines = try container.decode([InvoicesProposeLinesPurchasesRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.documentDate, forKey: .documentDate)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case documentDate
            case lines
        }
    }
}
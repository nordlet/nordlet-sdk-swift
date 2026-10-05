import Foundation

extension Requests {
    public struct StatementRowsListLedgerRequest: Codable, Hashable, Sendable {
        public let scheme: String
        public let fromDate: CalendarDate?
        public let toDate: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            scheme: String,
            fromDate: CalendarDate? = nil,
            toDate: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.scheme = scheme
            self.fromDate = fromDate
            self.toDate = toDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.scheme = try container.decode(String.self, forKey: .scheme)
            self.fromDate = try container.decodeIfPresent(CalendarDate.self, forKey: .fromDate)
            self.toDate = try container.decodeIfPresent(CalendarDate.self, forKey: .toDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.scheme, forKey: .scheme)
            try container.encodeIfPresent(self.fromDate, forKey: .fromDate)
            try container.encodeIfPresent(self.toDate, forKey: .toDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case scheme
            case fromDate
            case toDate
        }
    }
}
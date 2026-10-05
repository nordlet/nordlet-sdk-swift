import Foundation

extension Requests {
    public struct EuVatRatesListReferenceRequest: Codable, Hashable, Sendable {
        public let countryCode: String?
        public let date: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            countryCode: String? = nil,
            date: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.countryCode = countryCode
            self.date = date
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
            self.date = try container.decodeIfPresent(CalendarDate.self, forKey: .date)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
            try container.encodeIfPresent(self.date, forKey: .date)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case countryCode
            case date
        }
    }
}
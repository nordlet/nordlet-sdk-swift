import Foundation

extension Requests {
    public struct PerDiemRatesCreateHrRequest: Codable, Hashable, Sendable {
        public let countryCode: String
        public let dailyAmount: String
        public let validFrom: CalendarDate
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            countryCode: String,
            dailyAmount: String,
            validFrom: CalendarDate,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.countryCode = countryCode
            self.dailyAmount = dailyAmount
            self.validFrom = validFrom
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.countryCode = try container.decode(String.self, forKey: .countryCode)
            self.dailyAmount = try container.decode(String.self, forKey: .dailyAmount)
            self.validFrom = try container.decode(CalendarDate.self, forKey: .validFrom)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.countryCode, forKey: .countryCode)
            try container.encode(self.dailyAmount, forKey: .dailyAmount)
            try container.encode(self.validFrom, forKey: .validFrom)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case countryCode
            case dailyAmount
            case validFrom
        }
    }
}
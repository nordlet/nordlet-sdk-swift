import Foundation

extension Requests {
    public struct PostV1ReferenceExchangeRatesSetRequest: Codable, Hashable, Sendable {
        public let currency: String
        public let date: String
        public let rate: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            currency: String,
            date: String,
            rate: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.currency = currency
            self.date = date
            self.rate = rate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.currency = try container.decode(String.self, forKey: .currency)
            self.date = try container.decode(String.self, forKey: .date)
            self.rate = try container.decode(String.self, forKey: .rate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.currency, forKey: .currency)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.rate, forKey: .rate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case currency
            case date
            case rate
        }
    }
}
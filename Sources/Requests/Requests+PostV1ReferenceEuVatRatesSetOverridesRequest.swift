import Foundation

extension Requests {
    public struct PostV1ReferenceEuVatRatesSetOverridesRequest: Codable, Hashable, Sendable {
        public let countryCode: String
        public let rates: [PostV1ReferenceEuVatRatesSetOverridesRequestRatesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            countryCode: String,
            rates: [PostV1ReferenceEuVatRatesSetOverridesRequestRatesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.countryCode = countryCode
            self.rates = rates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.countryCode = try container.decode(String.self, forKey: .countryCode)
            self.rates = try container.decode([PostV1ReferenceEuVatRatesSetOverridesRequestRatesItem].self, forKey: .rates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.countryCode, forKey: .countryCode)
            try container.encode(self.rates, forKey: .rates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case countryCode
            case rates
        }
    }
}
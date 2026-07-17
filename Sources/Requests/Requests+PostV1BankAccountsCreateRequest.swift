import Foundation

extension Requests {
    public struct PostV1BankAccountsCreateRequest: Codable, Hashable, Sendable {
        public let name: String
        public let iban: String?
        public let currency: String?
        public let accountCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            iban: String? = nil,
            currency: String? = nil,
            accountCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.iban = iban
            self.currency = currency
            self.accountCode = accountCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.accountCode = try container.decodeIfPresent(String.self, forKey: .accountCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.accountCode, forKey: .accountCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case iban
            case currency
            case accountCode
        }
    }
}
import Foundation

extension Requests {
    public struct AccountSetAccountTypeBillingRequest: Codable, Hashable, Sendable {
        public let accountType: AccountSetAccountTypeBillingRequestAccountType
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            accountType: AccountSetAccountTypeBillingRequestAccountType,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.accountType = accountType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.accountType = try container.decode(AccountSetAccountTypeBillingRequestAccountType.self, forKey: .accountType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.accountType, forKey: .accountType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case accountType
        }
    }
}
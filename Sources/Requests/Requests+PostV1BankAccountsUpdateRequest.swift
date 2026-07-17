import Foundation

extension Requests {
    public struct PostV1BankAccountsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let iban: String?
        public let accountCode: String?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            iban: String? = nil,
            accountCode: String? = nil,
            isActive: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.iban = iban
            self.accountCode = accountCode
            self.isActive = isActive
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.accountCode = try container.decodeIfPresent(String.self, forKey: .accountCode)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.accountCode, forKey: .accountCode)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case iban
            case accountCode
            case isActive
        }
    }
}
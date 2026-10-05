import Foundation

extension Requests {
    public struct MatchRulesUpdateBankRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let provider: String?
        public let pattern: String?
        public let payoutIdPrefix: Nullable<String>?
        public let bankAccountId: Nullable<String>?
        public let dateWindowDays: Int64?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            provider: String? = nil,
            pattern: String? = nil,
            payoutIdPrefix: Nullable<String>? = nil,
            bankAccountId: Nullable<String>? = nil,
            dateWindowDays: Int64? = nil,
            isActive: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.provider = provider
            self.pattern = pattern
            self.payoutIdPrefix = payoutIdPrefix
            self.bankAccountId = bankAccountId
            self.dateWindowDays = dateWindowDays
            self.isActive = isActive
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.provider = try container.decodeIfPresent(String.self, forKey: .provider)
            self.pattern = try container.decodeIfPresent(String.self, forKey: .pattern)
            self.payoutIdPrefix = try container.decodeNullableIfPresent(String.self, forKey: .payoutIdPrefix)
            self.bankAccountId = try container.decodeNullableIfPresent(String.self, forKey: .bankAccountId)
            self.dateWindowDays = try container.decodeIfPresent(Int64.self, forKey: .dateWindowDays)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.provider, forKey: .provider)
            try container.encodeIfPresent(self.pattern, forKey: .pattern)
            try container.encodeNullableIfPresent(self.payoutIdPrefix, forKey: .payoutIdPrefix)
            try container.encodeNullableIfPresent(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.dateWindowDays, forKey: .dateWindowDays)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case provider
            case pattern
            case payoutIdPrefix
            case bankAccountId
            case dateWindowDays
            case isActive
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1BankMatchRulesCreateRequest: Codable, Hashable, Sendable {
        public let name: String
        public let provider: String?
        public let pattern: String
        public let payoutIdPrefix: String?
        public let bankAccountId: String?
        public let dateWindowDays: Int64?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            provider: String? = nil,
            pattern: String,
            payoutIdPrefix: String? = nil,
            bankAccountId: String? = nil,
            dateWindowDays: Int64? = nil,
            isActive: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.name = try container.decode(String.self, forKey: .name)
            self.provider = try container.decodeIfPresent(String.self, forKey: .provider)
            self.pattern = try container.decode(String.self, forKey: .pattern)
            self.payoutIdPrefix = try container.decodeIfPresent(String.self, forKey: .payoutIdPrefix)
            self.bankAccountId = try container.decodeIfPresent(String.self, forKey: .bankAccountId)
            self.dateWindowDays = try container.decodeIfPresent(Int64.self, forKey: .dateWindowDays)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.provider, forKey: .provider)
            try container.encode(self.pattern, forKey: .pattern)
            try container.encodeIfPresent(self.payoutIdPrefix, forKey: .payoutIdPrefix)
            try container.encodeIfPresent(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.dateWindowDays, forKey: .dateWindowDays)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
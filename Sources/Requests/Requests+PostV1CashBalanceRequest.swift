import Foundation

extension Requests {
    public struct PostV1CashBalanceRequest: Codable, Hashable, Sendable {
        public let cashAccountCode: String?
        public let asOf: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cashAccountCode: String? = nil,
            asOf: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cashAccountCode = cashAccountCode
            self.asOf = asOf
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cashAccountCode = try container.decodeIfPresent(String.self, forKey: .cashAccountCode)
            self.asOf = try container.decodeIfPresent(String.self, forKey: .asOf)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cashAccountCode, forKey: .cashAccountCode)
            try container.encodeIfPresent(self.asOf, forKey: .asOf)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cashAccountCode
            case asOf
        }
    }
}
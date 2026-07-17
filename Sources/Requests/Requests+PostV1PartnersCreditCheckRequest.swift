import Foundation

extension Requests {
    public struct PostV1PartnersCreditCheckRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let additionalAmount: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            additionalAmount: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.additionalAmount = additionalAmount
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.additionalAmount = try container.decodeIfPresent(String.self, forKey: .additionalAmount)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.additionalAmount, forKey: .additionalAmount)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case additionalAmount
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1CatalogItemsSuppliersListRequest: Codable, Hashable, Sendable {
        public let itemId: String?
        public let partnerId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            itemId: String? = nil,
            partnerId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.itemId = itemId
            self.partnerId = partnerId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.itemId, forKey: .itemId)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case itemId
            case partnerId
        }
    }
}
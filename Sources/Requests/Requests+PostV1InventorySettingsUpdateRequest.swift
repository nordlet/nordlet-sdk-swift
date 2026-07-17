import Foundation

extension Requests {
    public struct PostV1InventorySettingsUpdateRequest: Codable, Hashable, Sendable {
        public let negativeStockPolicy: PostV1InventorySettingsUpdateRequestNegativeStockPolicy
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            negativeStockPolicy: PostV1InventorySettingsUpdateRequestNegativeStockPolicy,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.negativeStockPolicy = negativeStockPolicy
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.negativeStockPolicy = try container.decode(PostV1InventorySettingsUpdateRequestNegativeStockPolicy.self, forKey: .negativeStockPolicy)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.negativeStockPolicy, forKey: .negativeStockPolicy)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case negativeStockPolicy
        }
    }
}
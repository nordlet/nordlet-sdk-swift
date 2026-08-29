import Foundation

extension Requests {
    public struct PostV1InventoryReorderRulesCreateRequest: Codable, Hashable, Sendable {
        public let itemId: String
        public let warehouseId: String?
        public let minQty: String
        public let reorderQty: String?
        public let isActive: Bool?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            itemId: String,
            warehouseId: String? = nil,
            minQty: String,
            reorderQty: String? = nil,
            isActive: Bool? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.itemId = itemId
            self.warehouseId = warehouseId
            self.minQty = minQty
            self.reorderQty = reorderQty
            self.isActive = isActive
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.itemId = try container.decode(String.self, forKey: .itemId)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.minQty = try container.decode(String.self, forKey: .minQty)
            self.reorderQty = try container.decodeIfPresent(String.self, forKey: .reorderQty)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.itemId, forKey: .itemId)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encode(self.minQty, forKey: .minQty)
            try container.encodeIfPresent(self.reorderQty, forKey: .reorderQty)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case itemId
            case warehouseId
            case minQty
            case reorderQty
            case isActive
            case notes
        }
    }
}
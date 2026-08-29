import Foundation

extension Requests {
    public struct PostV1InventoryReorderRulesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let minQty: String?
        public let reorderQty: Nullable<String>?
        public let isActive: Bool?
        public let notes: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            minQty: String? = nil,
            reorderQty: Nullable<String>? = nil,
            isActive: Bool? = nil,
            notes: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.minQty = minQty
            self.reorderQty = reorderQty
            self.isActive = isActive
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.minQty = try container.decodeIfPresent(String.self, forKey: .minQty)
            self.reorderQty = try container.decodeNullableIfPresent(String.self, forKey: .reorderQty)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.minQty, forKey: .minQty)
            try container.encodeNullableIfPresent(self.reorderQty, forKey: .reorderQty)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case minQty
            case reorderQty
            case isActive
            case notes
        }
    }
}
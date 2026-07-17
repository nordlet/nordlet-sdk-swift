import Foundation

extension Requests {
    public struct PostV1InventoryStockTransferRequest: Codable, Hashable, Sendable {
        public let fromWarehouseId: String
        public let toWarehouseId: String
        public let itemId: String
        public let date: String
        public let quantity: String
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromWarehouseId: String,
            toWarehouseId: String,
            itemId: String,
            date: String,
            quantity: String,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromWarehouseId = fromWarehouseId
            self.toWarehouseId = toWarehouseId
            self.itemId = itemId
            self.date = date
            self.quantity = quantity
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromWarehouseId = try container.decode(String.self, forKey: .fromWarehouseId)
            self.toWarehouseId = try container.decode(String.self, forKey: .toWarehouseId)
            self.itemId = try container.decode(String.self, forKey: .itemId)
            self.date = try container.decode(String.self, forKey: .date)
            self.quantity = try container.decode(String.self, forKey: .quantity)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromWarehouseId, forKey: .fromWarehouseId)
            try container.encode(self.toWarehouseId, forKey: .toWarehouseId)
            try container.encode(self.itemId, forKey: .itemId)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.quantity, forKey: .quantity)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromWarehouseId
            case toWarehouseId
            case itemId
            case date
            case quantity
            case notes
        }
    }
}
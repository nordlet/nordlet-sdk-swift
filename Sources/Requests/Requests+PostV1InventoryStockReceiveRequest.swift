import Foundation

extension Requests {
    public struct PostV1InventoryStockReceiveRequest: Codable, Hashable, Sendable {
        public let warehouseId: String
        public let itemId: String
        public let date: String
        public let quantity: String
        public let unitCost: String
        public let lotNumber: String?
        public let expiryDate: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            warehouseId: String,
            itemId: String,
            date: String,
            quantity: String,
            unitCost: String,
            lotNumber: String? = nil,
            expiryDate: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.warehouseId = warehouseId
            self.itemId = itemId
            self.date = date
            self.quantity = quantity
            self.unitCost = unitCost
            self.lotNumber = lotNumber
            self.expiryDate = expiryDate
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
            self.itemId = try container.decode(String.self, forKey: .itemId)
            self.date = try container.decode(String.self, forKey: .date)
            self.quantity = try container.decode(String.self, forKey: .quantity)
            self.unitCost = try container.decode(String.self, forKey: .unitCost)
            self.lotNumber = try container.decodeIfPresent(String.self, forKey: .lotNumber)
            self.expiryDate = try container.decodeIfPresent(String.self, forKey: .expiryDate)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.warehouseId, forKey: .warehouseId)
            try container.encode(self.itemId, forKey: .itemId)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.quantity, forKey: .quantity)
            try container.encode(self.unitCost, forKey: .unitCost)
            try container.encodeIfPresent(self.lotNumber, forKey: .lotNumber)
            try container.encodeIfPresent(self.expiryDate, forKey: .expiryDate)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case warehouseId
            case itemId
            case date
            case quantity
            case unitCost
            case lotNumber
            case expiryDate
            case notes
        }
    }
}
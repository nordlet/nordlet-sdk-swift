import Foundation

extension Requests {
    public struct PostV1InventoryStockTakeRequest: Codable, Hashable, Sendable {
        public let warehouseId: String
        public let date: String
        public let expenseAccountCode: String?
        public let inventoryAccountCode: String?
        public let lines: [PostV1InventoryStockTakeRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            warehouseId: String,
            date: String,
            expenseAccountCode: String? = nil,
            inventoryAccountCode: String? = nil,
            lines: [PostV1InventoryStockTakeRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.warehouseId = warehouseId
            self.date = date
            self.expenseAccountCode = expenseAccountCode
            self.inventoryAccountCode = inventoryAccountCode
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
            self.date = try container.decode(String.self, forKey: .date)
            self.expenseAccountCode = try container.decodeIfPresent(String.self, forKey: .expenseAccountCode)
            self.inventoryAccountCode = try container.decodeIfPresent(String.self, forKey: .inventoryAccountCode)
            self.lines = try container.decode([PostV1InventoryStockTakeRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.warehouseId, forKey: .warehouseId)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.expenseAccountCode, forKey: .expenseAccountCode)
            try container.encodeIfPresent(self.inventoryAccountCode, forKey: .inventoryAccountCode)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case warehouseId
            case date
            case expenseAccountCode
            case inventoryAccountCode
            case lines
        }
    }
}
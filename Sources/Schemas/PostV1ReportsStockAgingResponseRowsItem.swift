import Foundation

public struct PostV1ReportsStockAgingResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let itemName: String
    public let warehouseId: String
    public let d0To30Qty: String
    public let d0To30Value: String
    public let d31To60Qty: String
    public let d31To60Value: String
    public let d61To90Qty: String
    public let d61To90Value: String
    public let over90Qty: String
    public let over90Value: String
    public let totalQty: String
    public let totalValue: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        itemName: String,
        warehouseId: String,
        d0To30Qty: String,
        d0To30Value: String,
        d31To60Qty: String,
        d31To60Value: String,
        d61To90Qty: String,
        d61To90Value: String,
        over90Qty: String,
        over90Value: String,
        totalQty: String,
        totalValue: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.itemName = itemName
        self.warehouseId = warehouseId
        self.d0To30Qty = d0To30Qty
        self.d0To30Value = d0To30Value
        self.d31To60Qty = d31To60Qty
        self.d31To60Value = d31To60Value
        self.d61To90Qty = d61To90Qty
        self.d61To90Value = d61To90Value
        self.over90Qty = over90Qty
        self.over90Value = over90Value
        self.totalQty = totalQty
        self.totalValue = totalValue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.d0To30Qty = try container.decode(String.self, forKey: .d0To30Qty)
        self.d0To30Value = try container.decode(String.self, forKey: .d0To30Value)
        self.d31To60Qty = try container.decode(String.self, forKey: .d31To60Qty)
        self.d31To60Value = try container.decode(String.self, forKey: .d31To60Value)
        self.d61To90Qty = try container.decode(String.self, forKey: .d61To90Qty)
        self.d61To90Value = try container.decode(String.self, forKey: .d61To90Value)
        self.over90Qty = try container.decode(String.self, forKey: .over90Qty)
        self.over90Value = try container.decode(String.self, forKey: .over90Value)
        self.totalQty = try container.decode(String.self, forKey: .totalQty)
        self.totalValue = try container.decode(String.self, forKey: .totalValue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.d0To30Qty, forKey: .d0To30Qty)
        try container.encode(self.d0To30Value, forKey: .d0To30Value)
        try container.encode(self.d31To60Qty, forKey: .d31To60Qty)
        try container.encode(self.d31To60Value, forKey: .d31To60Value)
        try container.encode(self.d61To90Qty, forKey: .d61To90Qty)
        try container.encode(self.d61To90Value, forKey: .d61To90Value)
        try container.encode(self.over90Qty, forKey: .over90Qty)
        try container.encode(self.over90Value, forKey: .over90Value)
        try container.encode(self.totalQty, forKey: .totalQty)
        try container.encode(self.totalValue, forKey: .totalValue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case itemName
        case warehouseId
        case d0To30Qty = "d0to30Qty"
        case d0To30Value = "d0to30Value"
        case d31To60Qty = "d31to60Qty"
        case d31To60Value = "d31to60Value"
        case d61To90Qty = "d61to90Qty"
        case d61To90Value = "d61to90Value"
        case over90Qty
        case over90Value
        case totalQty
        case totalValue
    }
}
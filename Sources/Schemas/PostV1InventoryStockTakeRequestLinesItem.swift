import Foundation

public struct PostV1InventoryStockTakeRequestLinesItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let barcode: String?
    public let countedQty: String
    public let unitCost: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        barcode: String? = nil,
        countedQty: String,
        unitCost: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.barcode = barcode
        self.countedQty = countedQty
        self.unitCost = unitCost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.barcode = try container.decodeIfPresent(String.self, forKey: .barcode)
        self.countedQty = try container.decode(String.self, forKey: .countedQty)
        self.unitCost = try container.decodeIfPresent(String.self, forKey: .unitCost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encodeIfPresent(self.barcode, forKey: .barcode)
        try container.encode(self.countedQty, forKey: .countedQty)
        try container.encodeIfPresent(self.unitCost, forKey: .unitCost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case barcode
        case countedQty
        case unitCost
    }
}
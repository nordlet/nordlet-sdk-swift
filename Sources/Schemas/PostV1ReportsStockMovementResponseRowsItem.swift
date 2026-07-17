import Foundation

public struct PostV1ReportsStockMovementResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let itemName: String
    public let openingQty: String
    public let openingValue: String
    public let inQty: String
    public let inValue: String
    public let outQty: String
    public let outValue: String
    public let closingQty: String
    public let closingValue: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        itemName: String,
        openingQty: String,
        openingValue: String,
        inQty: String,
        inValue: String,
        outQty: String,
        outValue: String,
        closingQty: String,
        closingValue: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.itemName = itemName
        self.openingQty = openingQty
        self.openingValue = openingValue
        self.inQty = inQty
        self.inValue = inValue
        self.outQty = outQty
        self.outValue = outValue
        self.closingQty = closingQty
        self.closingValue = closingValue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.openingQty = try container.decode(String.self, forKey: .openingQty)
        self.openingValue = try container.decode(String.self, forKey: .openingValue)
        self.inQty = try container.decode(String.self, forKey: .inQty)
        self.inValue = try container.decode(String.self, forKey: .inValue)
        self.outQty = try container.decode(String.self, forKey: .outQty)
        self.outValue = try container.decode(String.self, forKey: .outValue)
        self.closingQty = try container.decode(String.self, forKey: .closingQty)
        self.closingValue = try container.decode(String.self, forKey: .closingValue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.openingQty, forKey: .openingQty)
        try container.encode(self.openingValue, forKey: .openingValue)
        try container.encode(self.inQty, forKey: .inQty)
        try container.encode(self.inValue, forKey: .inValue)
        try container.encode(self.outQty, forKey: .outQty)
        try container.encode(self.outValue, forKey: .outValue)
        try container.encode(self.closingQty, forKey: .closingQty)
        try container.encode(self.closingValue, forKey: .closingValue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case itemName
        case openingQty
        case openingValue
        case inQty
        case inValue
        case outQty
        case outValue
        case closingQty
        case closingValue
    }
}
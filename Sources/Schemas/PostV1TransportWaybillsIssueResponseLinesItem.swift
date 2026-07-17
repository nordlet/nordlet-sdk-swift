import Foundation

public struct PostV1TransportWaybillsIssueResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: Nullable<String>
    public let description: String
    public let unit: String
    public let quantity: String
    public let productCode: Nullable<String>
    public let sortOrder: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: Nullable<String>,
        description: String,
        unit: String,
        quantity: String,
        productCode: Nullable<String>,
        sortOrder: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.description = description
        self.unit = unit
        self.quantity = quantity
        self.productCode = productCode
        self.sortOrder = sortOrder
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(Nullable<String>.self, forKey: .itemId)
        self.description = try container.decode(String.self, forKey: .description)
        self.unit = try container.decode(String.self, forKey: .unit)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.productCode = try container.decode(Nullable<String>.self, forKey: .productCode)
        self.sortOrder = try container.decode(Int64.self, forKey: .sortOrder)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.productCode, forKey: .productCode)
        try container.encode(self.sortOrder, forKey: .sortOrder)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case description
        case unit
        case quantity
        case productCode
        case sortOrder
    }
}
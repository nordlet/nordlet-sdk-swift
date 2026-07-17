import Foundation

public struct PostV1TransportWaybillsUpdateRequestLinesItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let description: String?
    public let unit: String?
    public let quantity: String
    public let productCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        description: String? = nil,
        unit: String? = nil,
        quantity: String,
        productCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.description = description
        self.unit = unit
        self.quantity = quantity
        self.productCode = productCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.unit = try container.decodeIfPresent(String.self, forKey: .unit)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.productCode = try container.decodeIfPresent(String.self, forKey: .productCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.productCode, forKey: .productCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case description
        case unit
        case quantity
        case productCode
    }
}
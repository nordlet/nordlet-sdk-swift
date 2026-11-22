import Foundation

public struct GbP11DItemsListDeclarationsResponseItemsItemItemOtherNonClass1A: Codable, Hashable, Sendable {
    public let item: GbP11DItemsListDeclarationsResponseItemsItemItemOtherNonClass1AItem
    public let otherDescription: String?
    public let cost: String
    public let madeGood: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        item: GbP11DItemsListDeclarationsResponseItemsItemItemOtherNonClass1AItem,
        otherDescription: String? = nil,
        cost: String,
        madeGood: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.item = item
        self.otherDescription = otherDescription
        self.cost = cost
        self.madeGood = madeGood
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.item = try container.decode(GbP11DItemsListDeclarationsResponseItemsItemItemOtherNonClass1AItem.self, forKey: .item)
        self.otherDescription = try container.decodeIfPresent(String.self, forKey: .otherDescription)
        self.cost = try container.decode(String.self, forKey: .cost)
        self.madeGood = try container.decode(String.self, forKey: .madeGood)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.item, forKey: .item)
        try container.encodeIfPresent(self.otherDescription, forKey: .otherDescription)
        try container.encode(self.cost, forKey: .cost)
        try container.encode(self.madeGood, forKey: .madeGood)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case item
        case otherDescription
        case cost
        case madeGood
    }
}
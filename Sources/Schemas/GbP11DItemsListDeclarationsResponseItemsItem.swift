import Foundation

public struct GbP11DItemsListDeclarationsResponseItemsItem: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let taxYear: Double
    public let section: String
    public let class1A: Bool
    public let cashEquivalent: String
    public let item: GbP11DItemsListDeclarationsResponseItemsItemItem
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        taxYear: Double,
        section: String,
        class1A: Bool,
        cashEquivalent: String,
        item: GbP11DItemsListDeclarationsResponseItemsItemItem,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.taxYear = taxYear
        self.section = section
        self.class1A = class1A
        self.cashEquivalent = cashEquivalent
        self.item = item
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.taxYear = try container.decode(Double.self, forKey: .taxYear)
        self.section = try container.decode(String.self, forKey: .section)
        self.class1A = try container.decode(Bool.self, forKey: .class1A)
        self.cashEquivalent = try container.decode(String.self, forKey: .cashEquivalent)
        self.item = try container.decode(GbP11DItemsListDeclarationsResponseItemsItemItem.self, forKey: .item)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.taxYear, forKey: .taxYear)
        try container.encode(self.section, forKey: .section)
        try container.encode(self.class1A, forKey: .class1A)
        try container.encode(self.cashEquivalent, forKey: .cashEquivalent)
        try container.encode(self.item, forKey: .item)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case taxYear
        case section
        case class1A
        case cashEquivalent
        case item
    }
}
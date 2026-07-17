import Foundation

public struct PostV1EcommerceProductsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1EcommerceProductsListResponseRowsItemType
    public let name: String
    public let code: Nullable<String>
    public let barcode: Nullable<String>
    public let unit: String
    public let description: Nullable<String>
    public let translations: Nullable<[String: Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>]>
    public let attributes: Nullable<[String: Nullable<String>]>
    public let groupId: Nullable<String>
    public let groupName: Nullable<String>
    public let vatRatePercent: Nullable<String>
    public let price: Nullable<String>
    public let currency: String
    public let components: [PostV1EcommerceProductsListResponseRowsItemComponentsItem]
    public let onHand: Nullable<String>
    public let reserved: Nullable<String>
    public let available: Nullable<String>
    public let deleted: Bool
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1EcommerceProductsListResponseRowsItemType,
        name: String,
        code: Nullable<String>,
        barcode: Nullable<String>,
        unit: String,
        description: Nullable<String>,
        translations: Nullable<[String: Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>]>,
        attributes: Nullable<[String: Nullable<String>]>,
        groupId: Nullable<String>,
        groupName: Nullable<String>,
        vatRatePercent: Nullable<String>,
        price: Nullable<String>,
        currency: String,
        components: [PostV1EcommerceProductsListResponseRowsItemComponentsItem],
        onHand: Nullable<String>,
        reserved: Nullable<String>,
        available: Nullable<String>,
        deleted: Bool,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.name = name
        self.code = code
        self.barcode = barcode
        self.unit = unit
        self.description = description
        self.translations = translations
        self.attributes = attributes
        self.groupId = groupId
        self.groupName = groupName
        self.vatRatePercent = vatRatePercent
        self.price = price
        self.currency = currency
        self.components = components
        self.onHand = onHand
        self.reserved = reserved
        self.available = available
        self.deleted = deleted
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1EcommerceProductsListResponseRowsItemType.self, forKey: .type)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.barcode = try container.decode(Nullable<String>.self, forKey: .barcode)
        self.unit = try container.decode(String.self, forKey: .unit)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.translations = try container.decode(Nullable<[String: Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>]>.self, forKey: .translations)
        self.attributes = try container.decode(Nullable<[String: Nullable<String>]>.self, forKey: .attributes)
        self.groupId = try container.decode(Nullable<String>.self, forKey: .groupId)
        self.groupName = try container.decode(Nullable<String>.self, forKey: .groupName)
        self.vatRatePercent = try container.decode(Nullable<String>.self, forKey: .vatRatePercent)
        self.price = try container.decode(Nullable<String>.self, forKey: .price)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.components = try container.decode([PostV1EcommerceProductsListResponseRowsItemComponentsItem].self, forKey: .components)
        self.onHand = try container.decode(Nullable<String>.self, forKey: .onHand)
        self.reserved = try container.decode(Nullable<String>.self, forKey: .reserved)
        self.available = try container.decode(Nullable<String>.self, forKey: .available)
        self.deleted = try container.decode(Bool.self, forKey: .deleted)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.barcode, forKey: .barcode)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.translations, forKey: .translations)
        try container.encode(self.attributes, forKey: .attributes)
        try container.encode(self.groupId, forKey: .groupId)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.price, forKey: .price)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.components, forKey: .components)
        try container.encode(self.onHand, forKey: .onHand)
        try container.encode(self.reserved, forKey: .reserved)
        try container.encode(self.available, forKey: .available)
        try container.encode(self.deleted, forKey: .deleted)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case name
        case code
        case barcode
        case unit
        case description
        case translations
        case attributes
        case groupId
        case groupName
        case vatRatePercent
        case price
        case currency
        case components
        case onHand
        case reserved
        case available
        case deleted
        case updatedAt
    }
}
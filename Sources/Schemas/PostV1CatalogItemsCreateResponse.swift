import Foundation

public struct PostV1CatalogItemsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1CatalogItemsCreateResponseType
    public let name: String
    public let code: Nullable<String>
    public let barcode: Nullable<String>
    public let unit: String
    public let vatClassifierCode: Nullable<String>
    public let vatRatePercent: Nullable<String>
    public let salePriceExclVat: Nullable<String>
    public let purchasePriceExclVat: Nullable<String>
    public let cnCode: Nullable<String>
    public let originCountry: Nullable<String>
    public let netMassKg: Nullable<String>
    public let supplementaryUnit: Nullable<String>
    public let supplementaryQtyPerUnit: Nullable<String>
    public let description: Nullable<String>
    public let groupId: Nullable<String>
    public let attributes: Nullable<[String: Nullable<String>]>
    public let translations: Nullable<[String: Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>]>
    public let components: [PostV1CatalogItemsCreateResponseComponentsItem]
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1CatalogItemsCreateResponseType,
        name: String,
        code: Nullable<String>,
        barcode: Nullable<String>,
        unit: String,
        vatClassifierCode: Nullable<String>,
        vatRatePercent: Nullable<String>,
        salePriceExclVat: Nullable<String>,
        purchasePriceExclVat: Nullable<String>,
        cnCode: Nullable<String>,
        originCountry: Nullable<String>,
        netMassKg: Nullable<String>,
        supplementaryUnit: Nullable<String>,
        supplementaryQtyPerUnit: Nullable<String>,
        description: Nullable<String>,
        groupId: Nullable<String>,
        attributes: Nullable<[String: Nullable<String>]>,
        translations: Nullable<[String: Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>]>,
        components: [PostV1CatalogItemsCreateResponseComponentsItem],
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.name = name
        self.code = code
        self.barcode = barcode
        self.unit = unit
        self.vatClassifierCode = vatClassifierCode
        self.vatRatePercent = vatRatePercent
        self.salePriceExclVat = salePriceExclVat
        self.purchasePriceExclVat = purchasePriceExclVat
        self.cnCode = cnCode
        self.originCountry = originCountry
        self.netMassKg = netMassKg
        self.supplementaryUnit = supplementaryUnit
        self.supplementaryQtyPerUnit = supplementaryQtyPerUnit
        self.description = description
        self.groupId = groupId
        self.attributes = attributes
        self.translations = translations
        self.components = components
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1CatalogItemsCreateResponseType.self, forKey: .type)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.barcode = try container.decode(Nullable<String>.self, forKey: .barcode)
        self.unit = try container.decode(String.self, forKey: .unit)
        self.vatClassifierCode = try container.decode(Nullable<String>.self, forKey: .vatClassifierCode)
        self.vatRatePercent = try container.decode(Nullable<String>.self, forKey: .vatRatePercent)
        self.salePriceExclVat = try container.decode(Nullable<String>.self, forKey: .salePriceExclVat)
        self.purchasePriceExclVat = try container.decode(Nullable<String>.self, forKey: .purchasePriceExclVat)
        self.cnCode = try container.decode(Nullable<String>.self, forKey: .cnCode)
        self.originCountry = try container.decode(Nullable<String>.self, forKey: .originCountry)
        self.netMassKg = try container.decode(Nullable<String>.self, forKey: .netMassKg)
        self.supplementaryUnit = try container.decode(Nullable<String>.self, forKey: .supplementaryUnit)
        self.supplementaryQtyPerUnit = try container.decode(Nullable<String>.self, forKey: .supplementaryQtyPerUnit)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.groupId = try container.decode(Nullable<String>.self, forKey: .groupId)
        self.attributes = try container.decode(Nullable<[String: Nullable<String>]>.self, forKey: .attributes)
        self.translations = try container.decode(Nullable<[String: Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>]>.self, forKey: .translations)
        self.components = try container.decode([PostV1CatalogItemsCreateResponseComponentsItem].self, forKey: .components)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
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
        try container.encode(self.vatClassifierCode, forKey: .vatClassifierCode)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.salePriceExclVat, forKey: .salePriceExclVat)
        try container.encode(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
        try container.encode(self.cnCode, forKey: .cnCode)
        try container.encode(self.originCountry, forKey: .originCountry)
        try container.encode(self.netMassKg, forKey: .netMassKg)
        try container.encode(self.supplementaryUnit, forKey: .supplementaryUnit)
        try container.encode(self.supplementaryQtyPerUnit, forKey: .supplementaryQtyPerUnit)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.groupId, forKey: .groupId)
        try container.encode(self.attributes, forKey: .attributes)
        try container.encode(self.translations, forKey: .translations)
        try container.encode(self.components, forKey: .components)
        try container.encode(self.createdAt, forKey: .createdAt)
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
        case vatClassifierCode
        case vatRatePercent
        case salePriceExclVat
        case purchasePriceExclVat
        case cnCode
        case originCountry
        case netMassKg
        case supplementaryUnit
        case supplementaryQtyPerUnit
        case description
        case groupId
        case attributes
        case translations
        case components
        case createdAt
        case updatedAt
    }
}
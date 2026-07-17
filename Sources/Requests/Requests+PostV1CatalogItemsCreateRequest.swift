import Foundation

extension Requests {
    public struct PostV1CatalogItemsCreateRequest: Codable, Hashable, Sendable {
        public let type: PostV1CatalogItemsCreateRequestType?
        public let name: String
        public let code: String?
        public let barcode: String?
        public let unit: String?
        public let vatClassifierCode: String?
        public let vatRatePercent: String?
        public let salePriceExclVat: String?
        public let purchasePriceExclVat: String?
        public let cnCode: String?
        public let originCountry: String?
        public let netMassKg: String?
        public let supplementaryUnit: String?
        public let supplementaryQtyPerUnit: String?
        public let description: String?
        public let groupId: String?
        public let attributes: [String: String]?
        public let translations: [String: PostV1CatalogItemsCreateRequestTranslationsValue]?
        public let components: [PostV1CatalogItemsCreateRequestComponentsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: PostV1CatalogItemsCreateRequestType? = nil,
            name: String,
            code: String? = nil,
            barcode: String? = nil,
            unit: String? = nil,
            vatClassifierCode: String? = nil,
            vatRatePercent: String? = nil,
            salePriceExclVat: String? = nil,
            purchasePriceExclVat: String? = nil,
            cnCode: String? = nil,
            originCountry: String? = nil,
            netMassKg: String? = nil,
            supplementaryUnit: String? = nil,
            supplementaryQtyPerUnit: String? = nil,
            description: String? = nil,
            groupId: String? = nil,
            attributes: [String: String]? = nil,
            translations: [String: PostV1CatalogItemsCreateRequestTranslationsValue]? = nil,
            components: [PostV1CatalogItemsCreateRequestComponentsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decodeIfPresent(PostV1CatalogItemsCreateRequestType.self, forKey: .type)
            self.name = try container.decode(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.barcode = try container.decodeIfPresent(String.self, forKey: .barcode)
            self.unit = try container.decodeIfPresent(String.self, forKey: .unit)
            self.vatClassifierCode = try container.decodeIfPresent(String.self, forKey: .vatClassifierCode)
            self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
            self.salePriceExclVat = try container.decodeIfPresent(String.self, forKey: .salePriceExclVat)
            self.purchasePriceExclVat = try container.decodeIfPresent(String.self, forKey: .purchasePriceExclVat)
            self.cnCode = try container.decodeIfPresent(String.self, forKey: .cnCode)
            self.originCountry = try container.decodeIfPresent(String.self, forKey: .originCountry)
            self.netMassKg = try container.decodeIfPresent(String.self, forKey: .netMassKg)
            self.supplementaryUnit = try container.decodeIfPresent(String.self, forKey: .supplementaryUnit)
            self.supplementaryQtyPerUnit = try container.decodeIfPresent(String.self, forKey: .supplementaryQtyPerUnit)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.groupId = try container.decodeIfPresent(String.self, forKey: .groupId)
            self.attributes = try container.decodeIfPresent([String: String].self, forKey: .attributes)
            self.translations = try container.decodeIfPresent([String: PostV1CatalogItemsCreateRequestTranslationsValue].self, forKey: .translations)
            self.components = try container.decodeIfPresent([PostV1CatalogItemsCreateRequestComponentsItem].self, forKey: .components)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.barcode, forKey: .barcode)
            try container.encodeIfPresent(self.unit, forKey: .unit)
            try container.encodeIfPresent(self.vatClassifierCode, forKey: .vatClassifierCode)
            try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
            try container.encodeIfPresent(self.salePriceExclVat, forKey: .salePriceExclVat)
            try container.encodeIfPresent(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
            try container.encodeIfPresent(self.cnCode, forKey: .cnCode)
            try container.encodeIfPresent(self.originCountry, forKey: .originCountry)
            try container.encodeIfPresent(self.netMassKg, forKey: .netMassKg)
            try container.encodeIfPresent(self.supplementaryUnit, forKey: .supplementaryUnit)
            try container.encodeIfPresent(self.supplementaryQtyPerUnit, forKey: .supplementaryQtyPerUnit)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.groupId, forKey: .groupId)
            try container.encodeIfPresent(self.attributes, forKey: .attributes)
            try container.encodeIfPresent(self.translations, forKey: .translations)
            try container.encodeIfPresent(self.components, forKey: .components)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
        }
    }
}
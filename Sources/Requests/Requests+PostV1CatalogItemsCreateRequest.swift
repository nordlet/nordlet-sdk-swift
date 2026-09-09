import Foundation

extension Requests {
    public struct PostV1CatalogItemsCreateRequest: Codable, Hashable, Sendable {
        public let type: PostV1CatalogItemsCreateRequestType?
        public let tracking: PostV1CatalogItemsCreateRequestTracking?
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
        public let documentRef: String?
        public let translations: [String: PostV1CatalogItemsCreateRequestTranslationsValue]?
        public let components: [PostV1CatalogItemsCreateRequestComponentsItem]?
        public let kindId: String?
        public let saleAccountCode: String?
        public let purchaseAccountCode: String?
        public let expenseAccountCode: String?
        public let manufacturer: String?
        public let grossMassKg: String?
        public let minQuantity: String?
        public let costPrice: String?
        public let isFreePrice: Bool?
        public let externalId: String?
        public let isReturnable: Bool?
        public let commentRequired: Bool?
        public let priceFrom: String?
        public let priceTo: String?
        public let minPrice: String?
        public let discountPercent: String?
        public let maxDiscountPercent: String?
        public let loyaltyPoints: Int64?
        public let department: String?
        public let ageRestriction: Int64?
        public let packageQuantity: String?
        public let taraCode: String?
        public let certificateNumber: String?
        public let certificateDate: String?
        public let validFrom: String?
        public let validTo: String?
        public let posFlags: [String: Bool]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: PostV1CatalogItemsCreateRequestType? = nil,
            tracking: PostV1CatalogItemsCreateRequestTracking? = nil,
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
            documentRef: String? = nil,
            translations: [String: PostV1CatalogItemsCreateRequestTranslationsValue]? = nil,
            components: [PostV1CatalogItemsCreateRequestComponentsItem]? = nil,
            kindId: String? = nil,
            saleAccountCode: String? = nil,
            purchaseAccountCode: String? = nil,
            expenseAccountCode: String? = nil,
            manufacturer: String? = nil,
            grossMassKg: String? = nil,
            minQuantity: String? = nil,
            costPrice: String? = nil,
            isFreePrice: Bool? = nil,
            externalId: String? = nil,
            isReturnable: Bool? = nil,
            commentRequired: Bool? = nil,
            priceFrom: String? = nil,
            priceTo: String? = nil,
            minPrice: String? = nil,
            discountPercent: String? = nil,
            maxDiscountPercent: String? = nil,
            loyaltyPoints: Int64? = nil,
            department: String? = nil,
            ageRestriction: Int64? = nil,
            packageQuantity: String? = nil,
            taraCode: String? = nil,
            certificateNumber: String? = nil,
            certificateDate: String? = nil,
            validFrom: String? = nil,
            validTo: String? = nil,
            posFlags: [String: Bool]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.tracking = tracking
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
            self.documentRef = documentRef
            self.translations = translations
            self.components = components
            self.kindId = kindId
            self.saleAccountCode = saleAccountCode
            self.purchaseAccountCode = purchaseAccountCode
            self.expenseAccountCode = expenseAccountCode
            self.manufacturer = manufacturer
            self.grossMassKg = grossMassKg
            self.minQuantity = minQuantity
            self.costPrice = costPrice
            self.isFreePrice = isFreePrice
            self.externalId = externalId
            self.isReturnable = isReturnable
            self.commentRequired = commentRequired
            self.priceFrom = priceFrom
            self.priceTo = priceTo
            self.minPrice = minPrice
            self.discountPercent = discountPercent
            self.maxDiscountPercent = maxDiscountPercent
            self.loyaltyPoints = loyaltyPoints
            self.department = department
            self.ageRestriction = ageRestriction
            self.packageQuantity = packageQuantity
            self.taraCode = taraCode
            self.certificateNumber = certificateNumber
            self.certificateDate = certificateDate
            self.validFrom = validFrom
            self.validTo = validTo
            self.posFlags = posFlags
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decodeIfPresent(PostV1CatalogItemsCreateRequestType.self, forKey: .type)
            self.tracking = try container.decodeIfPresent(PostV1CatalogItemsCreateRequestTracking.self, forKey: .tracking)
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
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.translations = try container.decodeIfPresent([String: PostV1CatalogItemsCreateRequestTranslationsValue].self, forKey: .translations)
            self.components = try container.decodeIfPresent([PostV1CatalogItemsCreateRequestComponentsItem].self, forKey: .components)
            self.kindId = try container.decodeIfPresent(String.self, forKey: .kindId)
            self.saleAccountCode = try container.decodeIfPresent(String.self, forKey: .saleAccountCode)
            self.purchaseAccountCode = try container.decodeIfPresent(String.self, forKey: .purchaseAccountCode)
            self.expenseAccountCode = try container.decodeIfPresent(String.self, forKey: .expenseAccountCode)
            self.manufacturer = try container.decodeIfPresent(String.self, forKey: .manufacturer)
            self.grossMassKg = try container.decodeIfPresent(String.self, forKey: .grossMassKg)
            self.minQuantity = try container.decodeIfPresent(String.self, forKey: .minQuantity)
            self.costPrice = try container.decodeIfPresent(String.self, forKey: .costPrice)
            self.isFreePrice = try container.decodeIfPresent(Bool.self, forKey: .isFreePrice)
            self.externalId = try container.decodeIfPresent(String.self, forKey: .externalId)
            self.isReturnable = try container.decodeIfPresent(Bool.self, forKey: .isReturnable)
            self.commentRequired = try container.decodeIfPresent(Bool.self, forKey: .commentRequired)
            self.priceFrom = try container.decodeIfPresent(String.self, forKey: .priceFrom)
            self.priceTo = try container.decodeIfPresent(String.self, forKey: .priceTo)
            self.minPrice = try container.decodeIfPresent(String.self, forKey: .minPrice)
            self.discountPercent = try container.decodeIfPresent(String.self, forKey: .discountPercent)
            self.maxDiscountPercent = try container.decodeIfPresent(String.self, forKey: .maxDiscountPercent)
            self.loyaltyPoints = try container.decodeIfPresent(Int64.self, forKey: .loyaltyPoints)
            self.department = try container.decodeIfPresent(String.self, forKey: .department)
            self.ageRestriction = try container.decodeIfPresent(Int64.self, forKey: .ageRestriction)
            self.packageQuantity = try container.decodeIfPresent(String.self, forKey: .packageQuantity)
            self.taraCode = try container.decodeIfPresent(String.self, forKey: .taraCode)
            self.certificateNumber = try container.decodeIfPresent(String.self, forKey: .certificateNumber)
            self.certificateDate = try container.decodeIfPresent(String.self, forKey: .certificateDate)
            self.validFrom = try container.decodeIfPresent(String.self, forKey: .validFrom)
            self.validTo = try container.decodeIfPresent(String.self, forKey: .validTo)
            self.posFlags = try container.decodeIfPresent([String: Bool].self, forKey: .posFlags)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.tracking, forKey: .tracking)
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
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
            try container.encodeIfPresent(self.translations, forKey: .translations)
            try container.encodeIfPresent(self.components, forKey: .components)
            try container.encodeIfPresent(self.kindId, forKey: .kindId)
            try container.encodeIfPresent(self.saleAccountCode, forKey: .saleAccountCode)
            try container.encodeIfPresent(self.purchaseAccountCode, forKey: .purchaseAccountCode)
            try container.encodeIfPresent(self.expenseAccountCode, forKey: .expenseAccountCode)
            try container.encodeIfPresent(self.manufacturer, forKey: .manufacturer)
            try container.encodeIfPresent(self.grossMassKg, forKey: .grossMassKg)
            try container.encodeIfPresent(self.minQuantity, forKey: .minQuantity)
            try container.encodeIfPresent(self.costPrice, forKey: .costPrice)
            try container.encodeIfPresent(self.isFreePrice, forKey: .isFreePrice)
            try container.encodeIfPresent(self.externalId, forKey: .externalId)
            try container.encodeIfPresent(self.isReturnable, forKey: .isReturnable)
            try container.encodeIfPresent(self.commentRequired, forKey: .commentRequired)
            try container.encodeIfPresent(self.priceFrom, forKey: .priceFrom)
            try container.encodeIfPresent(self.priceTo, forKey: .priceTo)
            try container.encodeIfPresent(self.minPrice, forKey: .minPrice)
            try container.encodeIfPresent(self.discountPercent, forKey: .discountPercent)
            try container.encodeIfPresent(self.maxDiscountPercent, forKey: .maxDiscountPercent)
            try container.encodeIfPresent(self.loyaltyPoints, forKey: .loyaltyPoints)
            try container.encodeIfPresent(self.department, forKey: .department)
            try container.encodeIfPresent(self.ageRestriction, forKey: .ageRestriction)
            try container.encodeIfPresent(self.packageQuantity, forKey: .packageQuantity)
            try container.encodeIfPresent(self.taraCode, forKey: .taraCode)
            try container.encodeIfPresent(self.certificateNumber, forKey: .certificateNumber)
            try container.encodeIfPresent(self.certificateDate, forKey: .certificateDate)
            try container.encodeIfPresent(self.validFrom, forKey: .validFrom)
            try container.encodeIfPresent(self.validTo, forKey: .validTo)
            try container.encodeIfPresent(self.posFlags, forKey: .posFlags)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case tracking
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
            case documentRef
            case translations
            case components
            case kindId
            case saleAccountCode
            case purchaseAccountCode
            case expenseAccountCode
            case manufacturer
            case grossMassKg
            case minQuantity
            case costPrice
            case isFreePrice
            case externalId
            case isReturnable
            case commentRequired
            case priceFrom
            case priceTo
            case minPrice
            case discountPercent
            case maxDiscountPercent
            case loyaltyPoints
            case department
            case ageRestriction
            case packageQuantity
            case taraCode
            case certificateNumber
            case certificateDate
            case validFrom
            case validTo
            case posFlags
        }
    }
}
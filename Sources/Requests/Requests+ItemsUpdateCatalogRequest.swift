import Foundation

extension Requests {
    public struct ItemsUpdateCatalogRequest: Codable, Hashable, Sendable {
        public let id: String
        public let type: ItemsUpdateCatalogRequestType?
        public let tracking: ItemsUpdateCatalogRequestTracking?
        public let name: String?
        public let code: Nullable<String>?
        public let barcode: Nullable<String>?
        public let unit: String?
        public let vatClassifierCode: Nullable<String>?
        public let vatRatePercent: Nullable<String>?
        public let salePriceExclVat: Nullable<String>?
        public let purchasePriceExclVat: Nullable<String>?
        public let cnCode: Nullable<String>?
        public let originCountry: Nullable<String>?
        public let netMassKg: Nullable<String>?
        public let supplementaryUnit: Nullable<String>?
        public let supplementaryQtyPerUnit: Nullable<String>?
        public let description: Nullable<String>?
        public let groupId: Nullable<String>?
        public let attributes: Nullable<[String: Nullable<String>]>?
        public let documentRef: String?
        public let translations: Nullable<[String: Nullable<ItemsUpdateCatalogRequestTranslationsValue>]>?
        public let components: [ItemsUpdateCatalogRequestComponentsItem]?
        public let kindId: Nullable<String>?
        public let saleAccountCode: Nullable<String>?
        public let purchaseAccountCode: Nullable<String>?
        public let expenseAccountCode: Nullable<String>?
        public let manufacturer: Nullable<String>?
        public let grossMassKg: Nullable<String>?
        public let minQuantity: Nullable<String>?
        public let costPrice: Nullable<String>?
        public let isFreePrice: Bool?
        public let externalId: Nullable<String>?
        public let isReturnable: Bool?
        public let commentRequired: Bool?
        public let priceFrom: Nullable<CalendarDate>?
        public let priceTo: Nullable<CalendarDate>?
        public let minPrice: Nullable<String>?
        public let discountPercent: Nullable<String>?
        public let maxDiscountPercent: Nullable<String>?
        public let loyaltyPoints: Nullable<Int64>?
        public let department: Nullable<String>?
        public let ageRestriction: Nullable<Int64>?
        public let packageQuantity: Nullable<String>?
        public let taraCode: Nullable<String>?
        public let certificateNumber: Nullable<String>?
        public let certificateDate: Nullable<CalendarDate>?
        public let validFrom: Nullable<CalendarDate>?
        public let validTo: Nullable<CalendarDate>?
        public let posFlags: Nullable<[String: Nullable<Bool>]>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            type: ItemsUpdateCatalogRequestType? = nil,
            tracking: ItemsUpdateCatalogRequestTracking? = nil,
            name: String? = nil,
            code: Nullable<String>? = nil,
            barcode: Nullable<String>? = nil,
            unit: String? = nil,
            vatClassifierCode: Nullable<String>? = nil,
            vatRatePercent: Nullable<String>? = nil,
            salePriceExclVat: Nullable<String>? = nil,
            purchasePriceExclVat: Nullable<String>? = nil,
            cnCode: Nullable<String>? = nil,
            originCountry: Nullable<String>? = nil,
            netMassKg: Nullable<String>? = nil,
            supplementaryUnit: Nullable<String>? = nil,
            supplementaryQtyPerUnit: Nullable<String>? = nil,
            description: Nullable<String>? = nil,
            groupId: Nullable<String>? = nil,
            attributes: Nullable<[String: Nullable<String>]>? = nil,
            documentRef: String? = nil,
            translations: Nullable<[String: Nullable<ItemsUpdateCatalogRequestTranslationsValue>]>? = nil,
            components: [ItemsUpdateCatalogRequestComponentsItem]? = nil,
            kindId: Nullable<String>? = nil,
            saleAccountCode: Nullable<String>? = nil,
            purchaseAccountCode: Nullable<String>? = nil,
            expenseAccountCode: Nullable<String>? = nil,
            manufacturer: Nullable<String>? = nil,
            grossMassKg: Nullable<String>? = nil,
            minQuantity: Nullable<String>? = nil,
            costPrice: Nullable<String>? = nil,
            isFreePrice: Bool? = nil,
            externalId: Nullable<String>? = nil,
            isReturnable: Bool? = nil,
            commentRequired: Bool? = nil,
            priceFrom: Nullable<CalendarDate>? = nil,
            priceTo: Nullable<CalendarDate>? = nil,
            minPrice: Nullable<String>? = nil,
            discountPercent: Nullable<String>? = nil,
            maxDiscountPercent: Nullable<String>? = nil,
            loyaltyPoints: Nullable<Int64>? = nil,
            department: Nullable<String>? = nil,
            ageRestriction: Nullable<Int64>? = nil,
            packageQuantity: Nullable<String>? = nil,
            taraCode: Nullable<String>? = nil,
            certificateNumber: Nullable<String>? = nil,
            certificateDate: Nullable<CalendarDate>? = nil,
            validFrom: Nullable<CalendarDate>? = nil,
            validTo: Nullable<CalendarDate>? = nil,
            posFlags: Nullable<[String: Nullable<Bool>]>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
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
            self.id = try container.decode(String.self, forKey: .id)
            self.type = try container.decodeIfPresent(ItemsUpdateCatalogRequestType.self, forKey: .type)
            self.tracking = try container.decodeIfPresent(ItemsUpdateCatalogRequestTracking.self, forKey: .tracking)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.code = try container.decodeNullableIfPresent(String.self, forKey: .code)
            self.barcode = try container.decodeNullableIfPresent(String.self, forKey: .barcode)
            self.unit = try container.decodeIfPresent(String.self, forKey: .unit)
            self.vatClassifierCode = try container.decodeNullableIfPresent(String.self, forKey: .vatClassifierCode)
            self.vatRatePercent = try container.decodeNullableIfPresent(String.self, forKey: .vatRatePercent)
            self.salePriceExclVat = try container.decodeNullableIfPresent(String.self, forKey: .salePriceExclVat)
            self.purchasePriceExclVat = try container.decodeNullableIfPresent(String.self, forKey: .purchasePriceExclVat)
            self.cnCode = try container.decodeNullableIfPresent(String.self, forKey: .cnCode)
            self.originCountry = try container.decodeNullableIfPresent(String.self, forKey: .originCountry)
            self.netMassKg = try container.decodeNullableIfPresent(String.self, forKey: .netMassKg)
            self.supplementaryUnit = try container.decodeNullableIfPresent(String.self, forKey: .supplementaryUnit)
            self.supplementaryQtyPerUnit = try container.decodeNullableIfPresent(String.self, forKey: .supplementaryQtyPerUnit)
            self.description = try container.decodeNullableIfPresent(String.self, forKey: .description)
            self.groupId = try container.decodeNullableIfPresent(String.self, forKey: .groupId)
            self.attributes = try container.decodeNullableIfPresent([String: Nullable<String>].self, forKey: .attributes)
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.translations = try container.decodeNullableIfPresent([String: Nullable<ItemsUpdateCatalogRequestTranslationsValue>].self, forKey: .translations)
            self.components = try container.decodeIfPresent([ItemsUpdateCatalogRequestComponentsItem].self, forKey: .components)
            self.kindId = try container.decodeNullableIfPresent(String.self, forKey: .kindId)
            self.saleAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .saleAccountCode)
            self.purchaseAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .purchaseAccountCode)
            self.expenseAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .expenseAccountCode)
            self.manufacturer = try container.decodeNullableIfPresent(String.self, forKey: .manufacturer)
            self.grossMassKg = try container.decodeNullableIfPresent(String.self, forKey: .grossMassKg)
            self.minQuantity = try container.decodeNullableIfPresent(String.self, forKey: .minQuantity)
            self.costPrice = try container.decodeNullableIfPresent(String.self, forKey: .costPrice)
            self.isFreePrice = try container.decodeIfPresent(Bool.self, forKey: .isFreePrice)
            self.externalId = try container.decodeNullableIfPresent(String.self, forKey: .externalId)
            self.isReturnable = try container.decodeIfPresent(Bool.self, forKey: .isReturnable)
            self.commentRequired = try container.decodeIfPresent(Bool.self, forKey: .commentRequired)
            self.priceFrom = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .priceFrom)
            self.priceTo = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .priceTo)
            self.minPrice = try container.decodeNullableIfPresent(String.self, forKey: .minPrice)
            self.discountPercent = try container.decodeNullableIfPresent(String.self, forKey: .discountPercent)
            self.maxDiscountPercent = try container.decodeNullableIfPresent(String.self, forKey: .maxDiscountPercent)
            self.loyaltyPoints = try container.decodeNullableIfPresent(Int64.self, forKey: .loyaltyPoints)
            self.department = try container.decodeNullableIfPresent(String.self, forKey: .department)
            self.ageRestriction = try container.decodeNullableIfPresent(Int64.self, forKey: .ageRestriction)
            self.packageQuantity = try container.decodeNullableIfPresent(String.self, forKey: .packageQuantity)
            self.taraCode = try container.decodeNullableIfPresent(String.self, forKey: .taraCode)
            self.certificateNumber = try container.decodeNullableIfPresent(String.self, forKey: .certificateNumber)
            self.certificateDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .certificateDate)
            self.validFrom = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .validFrom)
            self.validTo = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .validTo)
            self.posFlags = try container.decodeNullableIfPresent([String: Nullable<Bool>].self, forKey: .posFlags)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.tracking, forKey: .tracking)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.code, forKey: .code)
            try container.encodeNullableIfPresent(self.barcode, forKey: .barcode)
            try container.encodeIfPresent(self.unit, forKey: .unit)
            try container.encodeNullableIfPresent(self.vatClassifierCode, forKey: .vatClassifierCode)
            try container.encodeNullableIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
            try container.encodeNullableIfPresent(self.salePriceExclVat, forKey: .salePriceExclVat)
            try container.encodeNullableIfPresent(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
            try container.encodeNullableIfPresent(self.cnCode, forKey: .cnCode)
            try container.encodeNullableIfPresent(self.originCountry, forKey: .originCountry)
            try container.encodeNullableIfPresent(self.netMassKg, forKey: .netMassKg)
            try container.encodeNullableIfPresent(self.supplementaryUnit, forKey: .supplementaryUnit)
            try container.encodeNullableIfPresent(self.supplementaryQtyPerUnit, forKey: .supplementaryQtyPerUnit)
            try container.encodeNullableIfPresent(self.description, forKey: .description)
            try container.encodeNullableIfPresent(self.groupId, forKey: .groupId)
            try container.encodeNullableIfPresent(self.attributes, forKey: .attributes)
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
            try container.encodeNullableIfPresent(self.translations, forKey: .translations)
            try container.encodeIfPresent(self.components, forKey: .components)
            try container.encodeNullableIfPresent(self.kindId, forKey: .kindId)
            try container.encodeNullableIfPresent(self.saleAccountCode, forKey: .saleAccountCode)
            try container.encodeNullableIfPresent(self.purchaseAccountCode, forKey: .purchaseAccountCode)
            try container.encodeNullableIfPresent(self.expenseAccountCode, forKey: .expenseAccountCode)
            try container.encodeNullableIfPresent(self.manufacturer, forKey: .manufacturer)
            try container.encodeNullableIfPresent(self.grossMassKg, forKey: .grossMassKg)
            try container.encodeNullableIfPresent(self.minQuantity, forKey: .minQuantity)
            try container.encodeNullableIfPresent(self.costPrice, forKey: .costPrice)
            try container.encodeIfPresent(self.isFreePrice, forKey: .isFreePrice)
            try container.encodeNullableIfPresent(self.externalId, forKey: .externalId)
            try container.encodeIfPresent(self.isReturnable, forKey: .isReturnable)
            try container.encodeIfPresent(self.commentRequired, forKey: .commentRequired)
            try container.encodeNullableIfPresent(self.priceFrom, forKey: .priceFrom)
            try container.encodeNullableIfPresent(self.priceTo, forKey: .priceTo)
            try container.encodeNullableIfPresent(self.minPrice, forKey: .minPrice)
            try container.encodeNullableIfPresent(self.discountPercent, forKey: .discountPercent)
            try container.encodeNullableIfPresent(self.maxDiscountPercent, forKey: .maxDiscountPercent)
            try container.encodeNullableIfPresent(self.loyaltyPoints, forKey: .loyaltyPoints)
            try container.encodeNullableIfPresent(self.department, forKey: .department)
            try container.encodeNullableIfPresent(self.ageRestriction, forKey: .ageRestriction)
            try container.encodeNullableIfPresent(self.packageQuantity, forKey: .packageQuantity)
            try container.encodeNullableIfPresent(self.taraCode, forKey: .taraCode)
            try container.encodeNullableIfPresent(self.certificateNumber, forKey: .certificateNumber)
            try container.encodeNullableIfPresent(self.certificateDate, forKey: .certificateDate)
            try container.encodeNullableIfPresent(self.validFrom, forKey: .validFrom)
            try container.encodeNullableIfPresent(self.validTo, forKey: .validTo)
            try container.encodeNullableIfPresent(self.posFlags, forKey: .posFlags)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
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
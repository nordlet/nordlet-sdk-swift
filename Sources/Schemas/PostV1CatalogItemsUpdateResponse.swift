import Foundation

public struct PostV1CatalogItemsUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1CatalogItemsUpdateResponseType
    public let tracking: PostV1CatalogItemsUpdateResponseTracking
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
    public let documentRef: Nullable<String>
    public let translations: Nullable<[String: Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>]>
    public let components: [PostV1CatalogItemsUpdateResponseComponentsItem]
    public let kindId: Nullable<String>
    public let saleAccountCode: Nullable<String>
    public let purchaseAccountCode: Nullable<String>
    public let expenseAccountCode: Nullable<String>
    public let manufacturer: Nullable<String>
    public let grossMassKg: Nullable<String>
    public let minQuantity: Nullable<String>
    public let costPrice: Nullable<String>
    public let isFreePrice: Bool
    public let externalId: Nullable<String>
    public let isReturnable: Bool
    public let commentRequired: Bool
    public let priceFrom: Nullable<String>
    public let priceTo: Nullable<String>
    public let minPrice: Nullable<String>
    public let discountPercent: Nullable<String>
    public let maxDiscountPercent: Nullable<String>
    public let loyaltyPoints: Nullable<Int64>
    public let department: Nullable<String>
    public let ageRestriction: Nullable<Int64>
    public let packageQuantity: Nullable<String>
    public let taraCode: Nullable<String>
    public let certificateNumber: Nullable<String>
    public let certificateDate: Nullable<String>
    public let validFrom: Nullable<String>
    public let validTo: Nullable<String>
    public let posFlags: Nullable<[String: Nullable<Bool>]>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1CatalogItemsUpdateResponseType,
        tracking: PostV1CatalogItemsUpdateResponseTracking,
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
        documentRef: Nullable<String>,
        translations: Nullable<[String: Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>]>,
        components: [PostV1CatalogItemsUpdateResponseComponentsItem],
        kindId: Nullable<String>,
        saleAccountCode: Nullable<String>,
        purchaseAccountCode: Nullable<String>,
        expenseAccountCode: Nullable<String>,
        manufacturer: Nullable<String>,
        grossMassKg: Nullable<String>,
        minQuantity: Nullable<String>,
        costPrice: Nullable<String>,
        isFreePrice: Bool,
        externalId: Nullable<String>,
        isReturnable: Bool,
        commentRequired: Bool,
        priceFrom: Nullable<String>,
        priceTo: Nullable<String>,
        minPrice: Nullable<String>,
        discountPercent: Nullable<String>,
        maxDiscountPercent: Nullable<String>,
        loyaltyPoints: Nullable<Int64>,
        department: Nullable<String>,
        ageRestriction: Nullable<Int64>,
        packageQuantity: Nullable<String>,
        taraCode: Nullable<String>,
        certificateNumber: Nullable<String>,
        certificateDate: Nullable<String>,
        validFrom: Nullable<String>,
        validTo: Nullable<String>,
        posFlags: Nullable<[String: Nullable<Bool>]>,
        createdAt: String,
        updatedAt: String,
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
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1CatalogItemsUpdateResponseType.self, forKey: .type)
        self.tracking = try container.decode(PostV1CatalogItemsUpdateResponseTracking.self, forKey: .tracking)
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
        self.documentRef = try container.decode(Nullable<String>.self, forKey: .documentRef)
        self.translations = try container.decode(Nullable<[String: Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>]>.self, forKey: .translations)
        self.components = try container.decode([PostV1CatalogItemsUpdateResponseComponentsItem].self, forKey: .components)
        self.kindId = try container.decode(Nullable<String>.self, forKey: .kindId)
        self.saleAccountCode = try container.decode(Nullable<String>.self, forKey: .saleAccountCode)
        self.purchaseAccountCode = try container.decode(Nullable<String>.self, forKey: .purchaseAccountCode)
        self.expenseAccountCode = try container.decode(Nullable<String>.self, forKey: .expenseAccountCode)
        self.manufacturer = try container.decode(Nullable<String>.self, forKey: .manufacturer)
        self.grossMassKg = try container.decode(Nullable<String>.self, forKey: .grossMassKg)
        self.minQuantity = try container.decode(Nullable<String>.self, forKey: .minQuantity)
        self.costPrice = try container.decode(Nullable<String>.self, forKey: .costPrice)
        self.isFreePrice = try container.decode(Bool.self, forKey: .isFreePrice)
        self.externalId = try container.decode(Nullable<String>.self, forKey: .externalId)
        self.isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
        self.commentRequired = try container.decode(Bool.self, forKey: .commentRequired)
        self.priceFrom = try container.decode(Nullable<String>.self, forKey: .priceFrom)
        self.priceTo = try container.decode(Nullable<String>.self, forKey: .priceTo)
        self.minPrice = try container.decode(Nullable<String>.self, forKey: .minPrice)
        self.discountPercent = try container.decode(Nullable<String>.self, forKey: .discountPercent)
        self.maxDiscountPercent = try container.decode(Nullable<String>.self, forKey: .maxDiscountPercent)
        self.loyaltyPoints = try container.decode(Nullable<Int64>.self, forKey: .loyaltyPoints)
        self.department = try container.decode(Nullable<String>.self, forKey: .department)
        self.ageRestriction = try container.decode(Nullable<Int64>.self, forKey: .ageRestriction)
        self.packageQuantity = try container.decode(Nullable<String>.self, forKey: .packageQuantity)
        self.taraCode = try container.decode(Nullable<String>.self, forKey: .taraCode)
        self.certificateNumber = try container.decode(Nullable<String>.self, forKey: .certificateNumber)
        self.certificateDate = try container.decode(Nullable<String>.self, forKey: .certificateDate)
        self.validFrom = try container.decode(Nullable<String>.self, forKey: .validFrom)
        self.validTo = try container.decode(Nullable<String>.self, forKey: .validTo)
        self.posFlags = try container.decode(Nullable<[String: Nullable<Bool>]>.self, forKey: .posFlags)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.tracking, forKey: .tracking)
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
        try container.encode(self.documentRef, forKey: .documentRef)
        try container.encode(self.translations, forKey: .translations)
        try container.encode(self.components, forKey: .components)
        try container.encode(self.kindId, forKey: .kindId)
        try container.encode(self.saleAccountCode, forKey: .saleAccountCode)
        try container.encode(self.purchaseAccountCode, forKey: .purchaseAccountCode)
        try container.encode(self.expenseAccountCode, forKey: .expenseAccountCode)
        try container.encode(self.manufacturer, forKey: .manufacturer)
        try container.encode(self.grossMassKg, forKey: .grossMassKg)
        try container.encode(self.minQuantity, forKey: .minQuantity)
        try container.encode(self.costPrice, forKey: .costPrice)
        try container.encode(self.isFreePrice, forKey: .isFreePrice)
        try container.encode(self.externalId, forKey: .externalId)
        try container.encode(self.isReturnable, forKey: .isReturnable)
        try container.encode(self.commentRequired, forKey: .commentRequired)
        try container.encode(self.priceFrom, forKey: .priceFrom)
        try container.encode(self.priceTo, forKey: .priceTo)
        try container.encode(self.minPrice, forKey: .minPrice)
        try container.encode(self.discountPercent, forKey: .discountPercent)
        try container.encode(self.maxDiscountPercent, forKey: .maxDiscountPercent)
        try container.encode(self.loyaltyPoints, forKey: .loyaltyPoints)
        try container.encode(self.department, forKey: .department)
        try container.encode(self.ageRestriction, forKey: .ageRestriction)
        try container.encode(self.packageQuantity, forKey: .packageQuantity)
        try container.encode(self.taraCode, forKey: .taraCode)
        try container.encode(self.certificateNumber, forKey: .certificateNumber)
        try container.encode(self.certificateDate, forKey: .certificateDate)
        try container.encode(self.validFrom, forKey: .validFrom)
        try container.encode(self.validTo, forKey: .validTo)
        try container.encode(self.posFlags, forKey: .posFlags)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
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
        case createdAt
        case updatedAt
    }
}
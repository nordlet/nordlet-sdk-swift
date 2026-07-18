import Foundation

public struct PostV1SalesInvoicesUpdateRequestLinesItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let description: String?
    public let unit: String?
    public let quantity: PostV1SalesInvoicesUpdateRequestLinesItemQuantity?
    public let unitPriceExclVat: String?
    public let unitPriceInclVat: String?
    public let vatRatePercent: String?
    public let vatClassifierCode: String?
    public let costCenterId: String?
    public let recognition: PostV1SalesInvoicesUpdateRequestLinesItemRecognition?
    public let standaloneSellingPrice: String?
    public let refundEstimatePercent: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        description: String? = nil,
        unit: String? = nil,
        quantity: PostV1SalesInvoicesUpdateRequestLinesItemQuantity? = nil,
        unitPriceExclVat: String? = nil,
        unitPriceInclVat: String? = nil,
        vatRatePercent: String? = nil,
        vatClassifierCode: String? = nil,
        costCenterId: String? = nil,
        recognition: PostV1SalesInvoicesUpdateRequestLinesItemRecognition? = nil,
        standaloneSellingPrice: String? = nil,
        refundEstimatePercent: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.description = description
        self.unit = unit
        self.quantity = quantity
        self.unitPriceExclVat = unitPriceExclVat
        self.unitPriceInclVat = unitPriceInclVat
        self.vatRatePercent = vatRatePercent
        self.vatClassifierCode = vatClassifierCode
        self.costCenterId = costCenterId
        self.recognition = recognition
        self.standaloneSellingPrice = standaloneSellingPrice
        self.refundEstimatePercent = refundEstimatePercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.unit = try container.decodeIfPresent(String.self, forKey: .unit)
        self.quantity = try container.decodeIfPresent(PostV1SalesInvoicesUpdateRequestLinesItemQuantity.self, forKey: .quantity)
        self.unitPriceExclVat = try container.decodeIfPresent(String.self, forKey: .unitPriceExclVat)
        self.unitPriceInclVat = try container.decodeIfPresent(String.self, forKey: .unitPriceInclVat)
        self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
        self.vatClassifierCode = try container.decodeIfPresent(String.self, forKey: .vatClassifierCode)
        self.costCenterId = try container.decodeIfPresent(String.self, forKey: .costCenterId)
        self.recognition = try container.decodeIfPresent(PostV1SalesInvoicesUpdateRequestLinesItemRecognition.self, forKey: .recognition)
        self.standaloneSellingPrice = try container.decodeIfPresent(String.self, forKey: .standaloneSellingPrice)
        self.refundEstimatePercent = try container.decodeIfPresent(String.self, forKey: .refundEstimatePercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.unitPriceExclVat, forKey: .unitPriceExclVat)
        try container.encodeIfPresent(self.unitPriceInclVat, forKey: .unitPriceInclVat)
        try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encodeIfPresent(self.vatClassifierCode, forKey: .vatClassifierCode)
        try container.encodeIfPresent(self.costCenterId, forKey: .costCenterId)
        try container.encodeIfPresent(self.recognition, forKey: .recognition)
        try container.encodeIfPresent(self.standaloneSellingPrice, forKey: .standaloneSellingPrice)
        try container.encodeIfPresent(self.refundEstimatePercent, forKey: .refundEstimatePercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case description
        case unit
        case quantity
        case unitPriceExclVat
        case unitPriceInclVat
        case vatRatePercent
        case vatClassifierCode
        case costCenterId
        case recognition
        case standaloneSellingPrice
        case refundEstimatePercent
    }
}
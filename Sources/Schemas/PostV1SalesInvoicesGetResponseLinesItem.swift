import Foundation

public struct PostV1SalesInvoicesGetResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: Nullable<String>
    public let description: String
    public let unit: String
    public let quantity: String
    public let unitPriceExclVat: Nullable<String>
    public let unitPriceInclVat: Nullable<String>
    public let vatRatePercent: String
    public let vatClassifierCode: Nullable<String>
    public let costCenterId: Nullable<String>
    public let lineNet: String
    public let lineVat: String
    public let lineGross: String
    public let sortOrder: Int64
    public let recognitionMethod: PostV1SalesInvoicesGetResponseLinesItemRecognitionMethod
    public let recognitionStartDate: Nullable<String>
    public let recognitionEndDate: Nullable<String>
    public let recognitionMilestones: Nullable<[PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem]>
    public let standaloneSellingPrice: Nullable<String>
    public let allocatedNet: Nullable<String>
    public let refundEstimatePercent: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: Nullable<String>,
        description: String,
        unit: String,
        quantity: String,
        unitPriceExclVat: Nullable<String>,
        unitPriceInclVat: Nullable<String>,
        vatRatePercent: String,
        vatClassifierCode: Nullable<String>,
        costCenterId: Nullable<String>,
        lineNet: String,
        lineVat: String,
        lineGross: String,
        sortOrder: Int64,
        recognitionMethod: PostV1SalesInvoicesGetResponseLinesItemRecognitionMethod,
        recognitionStartDate: Nullable<String>,
        recognitionEndDate: Nullable<String>,
        recognitionMilestones: Nullable<[PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem]>,
        standaloneSellingPrice: Nullable<String>,
        allocatedNet: Nullable<String>,
        refundEstimatePercent: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.description = description
        self.unit = unit
        self.quantity = quantity
        self.unitPriceExclVat = unitPriceExclVat
        self.unitPriceInclVat = unitPriceInclVat
        self.vatRatePercent = vatRatePercent
        self.vatClassifierCode = vatClassifierCode
        self.costCenterId = costCenterId
        self.lineNet = lineNet
        self.lineVat = lineVat
        self.lineGross = lineGross
        self.sortOrder = sortOrder
        self.recognitionMethod = recognitionMethod
        self.recognitionStartDate = recognitionStartDate
        self.recognitionEndDate = recognitionEndDate
        self.recognitionMilestones = recognitionMilestones
        self.standaloneSellingPrice = standaloneSellingPrice
        self.allocatedNet = allocatedNet
        self.refundEstimatePercent = refundEstimatePercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(Nullable<String>.self, forKey: .itemId)
        self.description = try container.decode(String.self, forKey: .description)
        self.unit = try container.decode(String.self, forKey: .unit)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitPriceExclVat = try container.decode(Nullable<String>.self, forKey: .unitPriceExclVat)
        self.unitPriceInclVat = try container.decode(Nullable<String>.self, forKey: .unitPriceInclVat)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.vatClassifierCode = try container.decode(Nullable<String>.self, forKey: .vatClassifierCode)
        self.costCenterId = try container.decode(Nullable<String>.self, forKey: .costCenterId)
        self.lineNet = try container.decode(String.self, forKey: .lineNet)
        self.lineVat = try container.decode(String.self, forKey: .lineVat)
        self.lineGross = try container.decode(String.self, forKey: .lineGross)
        self.sortOrder = try container.decode(Int64.self, forKey: .sortOrder)
        self.recognitionMethod = try container.decode(PostV1SalesInvoicesGetResponseLinesItemRecognitionMethod.self, forKey: .recognitionMethod)
        self.recognitionStartDate = try container.decode(Nullable<String>.self, forKey: .recognitionStartDate)
        self.recognitionEndDate = try container.decode(Nullable<String>.self, forKey: .recognitionEndDate)
        self.recognitionMilestones = try container.decode(Nullable<[PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem]>.self, forKey: .recognitionMilestones)
        self.standaloneSellingPrice = try container.decode(Nullable<String>.self, forKey: .standaloneSellingPrice)
        self.allocatedNet = try container.decode(Nullable<String>.self, forKey: .allocatedNet)
        self.refundEstimatePercent = try container.decode(Nullable<String>.self, forKey: .refundEstimatePercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitPriceExclVat, forKey: .unitPriceExclVat)
        try container.encode(self.unitPriceInclVat, forKey: .unitPriceInclVat)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.vatClassifierCode, forKey: .vatClassifierCode)
        try container.encode(self.costCenterId, forKey: .costCenterId)
        try container.encode(self.lineNet, forKey: .lineNet)
        try container.encode(self.lineVat, forKey: .lineVat)
        try container.encode(self.lineGross, forKey: .lineGross)
        try container.encode(self.sortOrder, forKey: .sortOrder)
        try container.encode(self.recognitionMethod, forKey: .recognitionMethod)
        try container.encode(self.recognitionStartDate, forKey: .recognitionStartDate)
        try container.encode(self.recognitionEndDate, forKey: .recognitionEndDate)
        try container.encode(self.recognitionMilestones, forKey: .recognitionMilestones)
        try container.encode(self.standaloneSellingPrice, forKey: .standaloneSellingPrice)
        try container.encode(self.allocatedNet, forKey: .allocatedNet)
        try container.encode(self.refundEstimatePercent, forKey: .refundEstimatePercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case description
        case unit
        case quantity
        case unitPriceExclVat
        case unitPriceInclVat
        case vatRatePercent
        case vatClassifierCode
        case costCenterId
        case lineNet
        case lineVat
        case lineGross
        case sortOrder
        case recognitionMethod
        case recognitionStartDate
        case recognitionEndDate
        case recognitionMilestones
        case standaloneSellingPrice
        case allocatedNet
        case refundEstimatePercent
    }
}
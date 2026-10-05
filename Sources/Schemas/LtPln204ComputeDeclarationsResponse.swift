import Foundation

public struct LtPln204ComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let periodStart: String
    public let periodEnd: String
    public let variant: LtPln204ComputeDeclarationsResponseVariant
    public let registrationNumber: String
    public let companyName: String
    public let ratePercent: String
    public let rateCode: String
    public let smallEntity: Bool
    public let criteria: LtPln204ComputeDeclarationsResponseCriteria
    public let totalIncome: String
    public let boxes: [String: String]
    public let annexS: [LtPln204ComputeDeclarationsResponseAnnexSItem]
    public let annexZ: [LtPln204ComputeDeclarationsResponseAnnexZItem]
    public let lines: [LtPln204ComputeDeclarationsResponseLinesItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        periodStart: String,
        periodEnd: String,
        variant: LtPln204ComputeDeclarationsResponseVariant,
        registrationNumber: String,
        companyName: String,
        ratePercent: String,
        rateCode: String,
        smallEntity: Bool,
        criteria: LtPln204ComputeDeclarationsResponseCriteria,
        totalIncome: String,
        boxes: [String: String],
        annexS: [LtPln204ComputeDeclarationsResponseAnnexSItem],
        annexZ: [LtPln204ComputeDeclarationsResponseAnnexZItem],
        lines: [LtPln204ComputeDeclarationsResponseLinesItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.variant = variant
        self.registrationNumber = registrationNumber
        self.companyName = companyName
        self.ratePercent = ratePercent
        self.rateCode = rateCode
        self.smallEntity = smallEntity
        self.criteria = criteria
        self.totalIncome = totalIncome
        self.boxes = boxes
        self.annexS = annexS
        self.annexZ = annexZ
        self.lines = lines
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.variant = try container.decode(LtPln204ComputeDeclarationsResponseVariant.self, forKey: .variant)
        self.registrationNumber = try container.decode(String.self, forKey: .registrationNumber)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.ratePercent = try container.decode(String.self, forKey: .ratePercent)
        self.rateCode = try container.decode(String.self, forKey: .rateCode)
        self.smallEntity = try container.decode(Bool.self, forKey: .smallEntity)
        self.criteria = try container.decode(LtPln204ComputeDeclarationsResponseCriteria.self, forKey: .criteria)
        self.totalIncome = try container.decode(String.self, forKey: .totalIncome)
        self.boxes = try container.decode([String: String].self, forKey: .boxes)
        self.annexS = try container.decode([LtPln204ComputeDeclarationsResponseAnnexSItem].self, forKey: .annexS)
        self.annexZ = try container.decode([LtPln204ComputeDeclarationsResponseAnnexZItem].self, forKey: .annexZ)
        self.lines = try container.decode([LtPln204ComputeDeclarationsResponseLinesItem].self, forKey: .lines)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.variant, forKey: .variant)
        try container.encode(self.registrationNumber, forKey: .registrationNumber)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.rateCode, forKey: .rateCode)
        try container.encode(self.smallEntity, forKey: .smallEntity)
        try container.encode(self.criteria, forKey: .criteria)
        try container.encode(self.totalIncome, forKey: .totalIncome)
        try container.encode(self.boxes, forKey: .boxes)
        try container.encode(self.annexS, forKey: .annexS)
        try container.encode(self.annexZ, forKey: .annexZ)
        try container.encode(self.lines, forKey: .lines)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case periodStart
        case periodEnd
        case variant
        case registrationNumber
        case companyName
        case ratePercent
        case rateCode
        case smallEntity
        case criteria
        case totalIncome
        case boxes
        case annexS
        case annexZ
        case lines
        case warnings
        case notes
        case source
    }
}
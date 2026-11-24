import Foundation

public struct VatProrataAdjustmentGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let fiscalYear: Int64
    public let provisionalPercent: Nullable<String>
    public let computedPercent: Nullable<String>
    public let definitivePercent: Nullable<String>
    public let turnoverWithDeduction: String
    public let turnoverWithoutDeduction: String
    public let capitalGoodsSales: String
    public let proRataVat: String
    public let deductedVat: String
    public let definitiveDeductibleVat: Nullable<String>
    public let adjustment: Nullable<String>
    public let warnings: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fiscalYear: Int64,
        provisionalPercent: Nullable<String>,
        computedPercent: Nullable<String>,
        definitivePercent: Nullable<String>,
        turnoverWithDeduction: String,
        turnoverWithoutDeduction: String,
        capitalGoodsSales: String,
        proRataVat: String,
        deductedVat: String,
        definitiveDeductibleVat: Nullable<String>,
        adjustment: Nullable<String>,
        warnings: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fiscalYear = fiscalYear
        self.provisionalPercent = provisionalPercent
        self.computedPercent = computedPercent
        self.definitivePercent = definitivePercent
        self.turnoverWithDeduction = turnoverWithDeduction
        self.turnoverWithoutDeduction = turnoverWithoutDeduction
        self.capitalGoodsSales = capitalGoodsSales
        self.proRataVat = proRataVat
        self.deductedVat = deductedVat
        self.definitiveDeductibleVat = definitiveDeductibleVat
        self.adjustment = adjustment
        self.warnings = warnings
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fiscalYear = try container.decode(Int64.self, forKey: .fiscalYear)
        self.provisionalPercent = try container.decode(Nullable<String>.self, forKey: .provisionalPercent)
        self.computedPercent = try container.decode(Nullable<String>.self, forKey: .computedPercent)
        self.definitivePercent = try container.decode(Nullable<String>.self, forKey: .definitivePercent)
        self.turnoverWithDeduction = try container.decode(String.self, forKey: .turnoverWithDeduction)
        self.turnoverWithoutDeduction = try container.decode(String.self, forKey: .turnoverWithoutDeduction)
        self.capitalGoodsSales = try container.decode(String.self, forKey: .capitalGoodsSales)
        self.proRataVat = try container.decode(String.self, forKey: .proRataVat)
        self.deductedVat = try container.decode(String.self, forKey: .deductedVat)
        self.definitiveDeductibleVat = try container.decode(Nullable<String>.self, forKey: .definitiveDeductibleVat)
        self.adjustment = try container.decode(Nullable<String>.self, forKey: .adjustment)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fiscalYear, forKey: .fiscalYear)
        try container.encode(self.provisionalPercent, forKey: .provisionalPercent)
        try container.encode(self.computedPercent, forKey: .computedPercent)
        try container.encode(self.definitivePercent, forKey: .definitivePercent)
        try container.encode(self.turnoverWithDeduction, forKey: .turnoverWithDeduction)
        try container.encode(self.turnoverWithoutDeduction, forKey: .turnoverWithoutDeduction)
        try container.encode(self.capitalGoodsSales, forKey: .capitalGoodsSales)
        try container.encode(self.proRataVat, forKey: .proRataVat)
        try container.encode(self.deductedVat, forKey: .deductedVat)
        try container.encode(self.definitiveDeductibleVat, forKey: .definitiveDeductibleVat)
        try container.encode(self.adjustment, forKey: .adjustment)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fiscalYear
        case provisionalPercent
        case computedPercent
        case definitivePercent
        case turnoverWithDeduction
        case turnoverWithoutDeduction
        case capitalGoodsSales
        case proRataVat
        case deductedVat
        case definitiveDeductibleVat
        case adjustment
        case warnings
        case source
    }
}
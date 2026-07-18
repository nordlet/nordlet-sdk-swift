import Foundation

public struct PostV1DeclarationsEuOssComputeResponse: Codable, Hashable, Sendable {
    public let periodYear: Int64
    public let fromDate: String
    public let toDate: String
    public let memberStateOfIdentification: String
    public let rows: [PostV1DeclarationsEuOssComputeResponseRowsItem]
    public let totals: PostV1DeclarationsEuOssComputeResponseTotals
    public let corrections: [PostV1DeclarationsEuOssComputeResponseCorrectionsItem]
    public let correctionsTotal: PostV1DeclarationsEuOssComputeResponseCorrectionsTotal
    public let warnings: [String]
    public let periodQuarter: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodYear: Int64,
        fromDate: String,
        toDate: String,
        memberStateOfIdentification: String,
        rows: [PostV1DeclarationsEuOssComputeResponseRowsItem],
        totals: PostV1DeclarationsEuOssComputeResponseTotals,
        corrections: [PostV1DeclarationsEuOssComputeResponseCorrectionsItem],
        correctionsTotal: PostV1DeclarationsEuOssComputeResponseCorrectionsTotal,
        warnings: [String],
        periodQuarter: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodYear = periodYear
        self.fromDate = fromDate
        self.toDate = toDate
        self.memberStateOfIdentification = memberStateOfIdentification
        self.rows = rows
        self.totals = totals
        self.corrections = corrections
        self.correctionsTotal = correctionsTotal
        self.warnings = warnings
        self.periodQuarter = periodQuarter
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodYear = try container.decode(Int64.self, forKey: .periodYear)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.memberStateOfIdentification = try container.decode(String.self, forKey: .memberStateOfIdentification)
        self.rows = try container.decode([PostV1DeclarationsEuOssComputeResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(PostV1DeclarationsEuOssComputeResponseTotals.self, forKey: .totals)
        self.corrections = try container.decode([PostV1DeclarationsEuOssComputeResponseCorrectionsItem].self, forKey: .corrections)
        self.correctionsTotal = try container.decode(PostV1DeclarationsEuOssComputeResponseCorrectionsTotal.self, forKey: .correctionsTotal)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.periodQuarter = try container.decode(Int64.self, forKey: .periodQuarter)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodYear, forKey: .periodYear)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.memberStateOfIdentification, forKey: .memberStateOfIdentification)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.corrections, forKey: .corrections)
        try container.encode(self.correctionsTotal, forKey: .correctionsTotal)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.periodQuarter, forKey: .periodQuarter)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodYear
        case fromDate
        case toDate
        case memberStateOfIdentification
        case rows
        case totals
        case corrections
        case correctionsTotal
        case warnings
        case periodQuarter
    }
}
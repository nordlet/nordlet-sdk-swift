import Foundation

public struct PostV1DeclarationsEuSmeCrossBorderReportComputeResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let quarter: Int64
    public let fromDate: String
    public let toDate: String
    public let currency: String
    public let rows: [PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem]
    public let total: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        quarter: Int64,
        fromDate: String,
        toDate: String,
        currency: String,
        rows: [PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem],
        total: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.quarter = quarter
        self.fromDate = fromDate
        self.toDate = toDate
        self.currency = currency
        self.rows = rows
        self.total = total
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.quarter = try container.decode(Int64.self, forKey: .quarter)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.rows = try container.decode([PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem].self, forKey: .rows)
        self.total = try container.decode(String.self, forKey: .total)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.quarter, forKey: .quarter)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case quarter
        case fromDate
        case toDate
        case currency
        case rows
        case total
        case warnings
    }
}
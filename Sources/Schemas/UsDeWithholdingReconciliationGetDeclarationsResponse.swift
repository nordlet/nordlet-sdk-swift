import Foundation

public struct UsDeWithholdingReconciliationGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Double
    public let taxpayerId: Nullable<String>
    public let taxPeriodStarting: String
    public let taxPeriodEnding: String
    public let line1: String
    public let line2: Double
    public let line3: String
    public let line4: Nullable<String>
    public let line5A: Nullable<String>
    public let line5B: Nullable<String>
    public let line6: Nullable<String>
    public let worksheet: [UsDeWithholdingReconciliationGetDeclarationsResponseWorksheetItem]
    public let totalTaxPaid: Nullable<String>
    public let totalTaxWithheld: String
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Double,
        taxpayerId: Nullable<String>,
        taxPeriodStarting: String,
        taxPeriodEnding: String,
        line1: String,
        line2: Double,
        line3: String,
        line4: Nullable<String>,
        line5A: Nullable<String>,
        line5B: Nullable<String>,
        line6: Nullable<String>,
        worksheet: [UsDeWithholdingReconciliationGetDeclarationsResponseWorksheetItem],
        totalTaxPaid: Nullable<String>,
        totalTaxWithheld: String,
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.taxpayerId = taxpayerId
        self.taxPeriodStarting = taxPeriodStarting
        self.taxPeriodEnding = taxPeriodEnding
        self.line1 = line1
        self.line2 = line2
        self.line3 = line3
        self.line4 = line4
        self.line5A = line5A
        self.line5B = line5B
        self.line6 = line6
        self.worksheet = worksheet
        self.totalTaxPaid = totalTaxPaid
        self.totalTaxWithheld = totalTaxWithheld
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Double.self, forKey: .year)
        self.taxpayerId = try container.decode(Nullable<String>.self, forKey: .taxpayerId)
        self.taxPeriodStarting = try container.decode(String.self, forKey: .taxPeriodStarting)
        self.taxPeriodEnding = try container.decode(String.self, forKey: .taxPeriodEnding)
        self.line1 = try container.decode(String.self, forKey: .line1)
        self.line2 = try container.decode(Double.self, forKey: .line2)
        self.line3 = try container.decode(String.self, forKey: .line3)
        self.line4 = try container.decode(Nullable<String>.self, forKey: .line4)
        self.line5A = try container.decode(Nullable<String>.self, forKey: .line5A)
        self.line5B = try container.decode(Nullable<String>.self, forKey: .line5B)
        self.line6 = try container.decode(Nullable<String>.self, forKey: .line6)
        self.worksheet = try container.decode([UsDeWithholdingReconciliationGetDeclarationsResponseWorksheetItem].self, forKey: .worksheet)
        self.totalTaxPaid = try container.decode(Nullable<String>.self, forKey: .totalTaxPaid)
        self.totalTaxWithheld = try container.decode(String.self, forKey: .totalTaxWithheld)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.taxpayerId, forKey: .taxpayerId)
        try container.encode(self.taxPeriodStarting, forKey: .taxPeriodStarting)
        try container.encode(self.taxPeriodEnding, forKey: .taxPeriodEnding)
        try container.encode(self.line1, forKey: .line1)
        try container.encode(self.line2, forKey: .line2)
        try container.encode(self.line3, forKey: .line3)
        try container.encode(self.line4, forKey: .line4)
        try container.encode(self.line5A, forKey: .line5A)
        try container.encode(self.line5B, forKey: .line5B)
        try container.encode(self.line6, forKey: .line6)
        try container.encode(self.worksheet, forKey: .worksheet)
        try container.encode(self.totalTaxPaid, forKey: .totalTaxPaid)
        try container.encode(self.totalTaxWithheld, forKey: .totalTaxWithheld)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case taxpayerId
        case taxPeriodStarting
        case taxPeriodEnding
        case line1
        case line2
        case line3
        case line4
        case line5A = "line5a"
        case line5B = "line5b"
        case line6
        case worksheet
        case totalTaxPaid
        case totalTaxWithheld
        case source
    }
}
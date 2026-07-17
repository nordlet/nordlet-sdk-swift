import Foundation

public struct PostV1DeclarationsLtSamComputeResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let month: Int64
    public let insuredCount: Int64
    public let insuredIncomeTotal: String
    public let contributionsTotal: String
    public let persons: [PostV1DeclarationsLtSamComputeResponsePersonsItem]
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        month: Int64,
        insuredCount: Int64,
        insuredIncomeTotal: String,
        contributionsTotal: String,
        persons: [PostV1DeclarationsLtSamComputeResponsePersonsItem],
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.month = month
        self.insuredCount = insuredCount
        self.insuredIncomeTotal = insuredIncomeTotal
        self.contributionsTotal = contributionsTotal
        self.persons = persons
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.insuredCount = try container.decode(Int64.self, forKey: .insuredCount)
        self.insuredIncomeTotal = try container.decode(String.self, forKey: .insuredIncomeTotal)
        self.contributionsTotal = try container.decode(String.self, forKey: .contributionsTotal)
        self.persons = try container.decode([PostV1DeclarationsLtSamComputeResponsePersonsItem].self, forKey: .persons)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.insuredCount, forKey: .insuredCount)
        try container.encode(self.insuredIncomeTotal, forKey: .insuredIncomeTotal)
        try container.encode(self.contributionsTotal, forKey: .contributionsTotal)
        try container.encode(self.persons, forKey: .persons)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case month
        case insuredCount
        case insuredIncomeTotal
        case contributionsTotal
        case persons
        case warnings
        case notes
    }
}
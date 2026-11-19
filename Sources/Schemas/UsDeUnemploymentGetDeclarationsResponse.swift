import Foundation

public struct UsDeUnemploymentGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Double
    public let quarter: Double
    public let totalWages: String
    public let excessWages: String
    public let taxableWages: String
    public let contributions: String
    public let employees: [UsDeUnemploymentGetDeclarationsResponseEmployeesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Double,
        quarter: Double,
        totalWages: String,
        excessWages: String,
        taxableWages: String,
        contributions: String,
        employees: [UsDeUnemploymentGetDeclarationsResponseEmployeesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.quarter = quarter
        self.totalWages = totalWages
        self.excessWages = excessWages
        self.taxableWages = taxableWages
        self.contributions = contributions
        self.employees = employees
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Double.self, forKey: .year)
        self.quarter = try container.decode(Double.self, forKey: .quarter)
        self.totalWages = try container.decode(String.self, forKey: .totalWages)
        self.excessWages = try container.decode(String.self, forKey: .excessWages)
        self.taxableWages = try container.decode(String.self, forKey: .taxableWages)
        self.contributions = try container.decode(String.self, forKey: .contributions)
        self.employees = try container.decode([UsDeUnemploymentGetDeclarationsResponseEmployeesItem].self, forKey: .employees)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.quarter, forKey: .quarter)
        try container.encode(self.totalWages, forKey: .totalWages)
        try container.encode(self.excessWages, forKey: .excessWages)
        try container.encode(self.taxableWages, forKey: .taxableWages)
        try container.encode(self.contributions, forKey: .contributions)
        try container.encode(self.employees, forKey: .employees)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case quarter
        case totalWages
        case excessWages
        case taxableWages
        case contributions
        case employees
    }
}
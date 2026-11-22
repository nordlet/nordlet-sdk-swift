import Foundation

public struct GbP45GetDeclarationsResponse: Codable, Hashable, Sendable {
    public let taxYear: Double
    public let completedOn: String
    public let employer: GbP45GetDeclarationsResponseEmployer
    public let employee: GbP45GetDeclarationsResponseEmployee
    public let studentLoanDeductionsToContinue: Bool
    public let taxCode: String
    public let week1Month1: Bool
    public let lastEntries: Nullable<GbP45GetDeclarationsResponseLastEntries>
    public let thisEmployment: Nullable<GbP45GetDeclarationsResponseThisEmployment>
    public let warnings: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taxYear: Double,
        completedOn: String,
        employer: GbP45GetDeclarationsResponseEmployer,
        employee: GbP45GetDeclarationsResponseEmployee,
        studentLoanDeductionsToContinue: Bool,
        taxCode: String,
        week1Month1: Bool,
        lastEntries: Nullable<GbP45GetDeclarationsResponseLastEntries>,
        thisEmployment: Nullable<GbP45GetDeclarationsResponseThisEmployment>,
        warnings: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taxYear = taxYear
        self.completedOn = completedOn
        self.employer = employer
        self.employee = employee
        self.studentLoanDeductionsToContinue = studentLoanDeductionsToContinue
        self.taxCode = taxCode
        self.week1Month1 = week1Month1
        self.lastEntries = lastEntries
        self.thisEmployment = thisEmployment
        self.warnings = warnings
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taxYear = try container.decode(Double.self, forKey: .taxYear)
        self.completedOn = try container.decode(String.self, forKey: .completedOn)
        self.employer = try container.decode(GbP45GetDeclarationsResponseEmployer.self, forKey: .employer)
        self.employee = try container.decode(GbP45GetDeclarationsResponseEmployee.self, forKey: .employee)
        self.studentLoanDeductionsToContinue = try container.decode(Bool.self, forKey: .studentLoanDeductionsToContinue)
        self.taxCode = try container.decode(String.self, forKey: .taxCode)
        self.week1Month1 = try container.decode(Bool.self, forKey: .week1Month1)
        self.lastEntries = try container.decode(Nullable<GbP45GetDeclarationsResponseLastEntries>.self, forKey: .lastEntries)
        self.thisEmployment = try container.decode(Nullable<GbP45GetDeclarationsResponseThisEmployment>.self, forKey: .thisEmployment)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taxYear, forKey: .taxYear)
        try container.encode(self.completedOn, forKey: .completedOn)
        try container.encode(self.employer, forKey: .employer)
        try container.encode(self.employee, forKey: .employee)
        try container.encode(self.studentLoanDeductionsToContinue, forKey: .studentLoanDeductionsToContinue)
        try container.encode(self.taxCode, forKey: .taxCode)
        try container.encode(self.week1Month1, forKey: .week1Month1)
        try container.encode(self.lastEntries, forKey: .lastEntries)
        try container.encode(self.thisEmployment, forKey: .thisEmployment)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taxYear
        case completedOn
        case employer
        case employee
        case studentLoanDeductionsToContinue
        case taxCode
        case week1Month1
        case lastEntries
        case thisEmployment
        case warnings
        case source
    }
}
import Foundation

public struct PostV1PayrollRunsGetResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let contractId: Nullable<String>
    public let employeeName: String
    public let gross: String
    public let natura: String
    public let additions: [PostV1PayrollRunsGetResponseLinesItemAdditionsItem]
    public let deductions: [PostV1PayrollRunsGetResponseLinesItemDeductionsItem]
    public let taxableBase: String
    public let taxAllowance: String
    public let incomeTax: String
    public let employeeContributions: String
    public let employerContributions: String
    public let components: [PostV1PayrollRunsGetResponseLinesItemComponentsItem]
    public let net: String
    public let daysWorked: Nullable<String>
    public let hoursWorked: Nullable<String>
    public let registeredDays: Nullable<String>
    public let averageHourlyEarnings: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        contractId: Nullable<String>,
        employeeName: String,
        gross: String,
        natura: String,
        additions: [PostV1PayrollRunsGetResponseLinesItemAdditionsItem],
        deductions: [PostV1PayrollRunsGetResponseLinesItemDeductionsItem],
        taxableBase: String,
        taxAllowance: String,
        incomeTax: String,
        employeeContributions: String,
        employerContributions: String,
        components: [PostV1PayrollRunsGetResponseLinesItemComponentsItem],
        net: String,
        daysWorked: Nullable<String>,
        hoursWorked: Nullable<String>,
        registeredDays: Nullable<String>,
        averageHourlyEarnings: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.contractId = contractId
        self.employeeName = employeeName
        self.gross = gross
        self.natura = natura
        self.additions = additions
        self.deductions = deductions
        self.taxableBase = taxableBase
        self.taxAllowance = taxAllowance
        self.incomeTax = incomeTax
        self.employeeContributions = employeeContributions
        self.employerContributions = employerContributions
        self.components = components
        self.net = net
        self.daysWorked = daysWorked
        self.hoursWorked = hoursWorked
        self.registeredDays = registeredDays
        self.averageHourlyEarnings = averageHourlyEarnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.contractId = try container.decode(Nullable<String>.self, forKey: .contractId)
        self.employeeName = try container.decode(String.self, forKey: .employeeName)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.natura = try container.decode(String.self, forKey: .natura)
        self.additions = try container.decode([PostV1PayrollRunsGetResponseLinesItemAdditionsItem].self, forKey: .additions)
        self.deductions = try container.decode([PostV1PayrollRunsGetResponseLinesItemDeductionsItem].self, forKey: .deductions)
        self.taxableBase = try container.decode(String.self, forKey: .taxableBase)
        self.taxAllowance = try container.decode(String.self, forKey: .taxAllowance)
        self.incomeTax = try container.decode(String.self, forKey: .incomeTax)
        self.employeeContributions = try container.decode(String.self, forKey: .employeeContributions)
        self.employerContributions = try container.decode(String.self, forKey: .employerContributions)
        self.components = try container.decode([PostV1PayrollRunsGetResponseLinesItemComponentsItem].self, forKey: .components)
        self.net = try container.decode(String.self, forKey: .net)
        self.daysWorked = try container.decode(Nullable<String>.self, forKey: .daysWorked)
        self.hoursWorked = try container.decode(Nullable<String>.self, forKey: .hoursWorked)
        self.registeredDays = try container.decode(Nullable<String>.self, forKey: .registeredDays)
        self.averageHourlyEarnings = try container.decode(Nullable<String>.self, forKey: .averageHourlyEarnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.contractId, forKey: .contractId)
        try container.encode(self.employeeName, forKey: .employeeName)
        try container.encode(self.gross, forKey: .gross)
        try container.encode(self.natura, forKey: .natura)
        try container.encode(self.additions, forKey: .additions)
        try container.encode(self.deductions, forKey: .deductions)
        try container.encode(self.taxableBase, forKey: .taxableBase)
        try container.encode(self.taxAllowance, forKey: .taxAllowance)
        try container.encode(self.incomeTax, forKey: .incomeTax)
        try container.encode(self.employeeContributions, forKey: .employeeContributions)
        try container.encode(self.employerContributions, forKey: .employerContributions)
        try container.encode(self.components, forKey: .components)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.daysWorked, forKey: .daysWorked)
        try container.encode(self.hoursWorked, forKey: .hoursWorked)
        try container.encode(self.registeredDays, forKey: .registeredDays)
        try container.encode(self.averageHourlyEarnings, forKey: .averageHourlyEarnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case contractId
        case employeeName
        case gross
        case natura
        case additions
        case deductions
        case taxableBase
        case taxAllowance
        case incomeTax
        case employeeContributions
        case employerContributions
        case components
        case net
        case daysWorked
        case hoursWorked
        case registeredDays
        case averageHourlyEarnings
    }
}
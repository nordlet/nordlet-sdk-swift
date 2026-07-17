import Foundation

public struct PostV1PayrollRunsGetResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let contractId: Nullable<String>
    public let employeeName: String
    public let gross: String
    public let additions: [PostV1PayrollRunsGetResponseLinesItemAdditionsItem]
    public let deductions: [PostV1PayrollRunsGetResponseLinesItemDeductionsItem]
    public let taxableBase: String
    public let npd: String
    public let gpm: String
    public let sodraEmployee: String
    public let sodraEmployer: String
    public let net: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        contractId: Nullable<String>,
        employeeName: String,
        gross: String,
        additions: [PostV1PayrollRunsGetResponseLinesItemAdditionsItem],
        deductions: [PostV1PayrollRunsGetResponseLinesItemDeductionsItem],
        taxableBase: String,
        npd: String,
        gpm: String,
        sodraEmployee: String,
        sodraEmployer: String,
        net: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.contractId = contractId
        self.employeeName = employeeName
        self.gross = gross
        self.additions = additions
        self.deductions = deductions
        self.taxableBase = taxableBase
        self.npd = npd
        self.gpm = gpm
        self.sodraEmployee = sodraEmployee
        self.sodraEmployer = sodraEmployer
        self.net = net
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.contractId = try container.decode(Nullable<String>.self, forKey: .contractId)
        self.employeeName = try container.decode(String.self, forKey: .employeeName)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.additions = try container.decode([PostV1PayrollRunsGetResponseLinesItemAdditionsItem].self, forKey: .additions)
        self.deductions = try container.decode([PostV1PayrollRunsGetResponseLinesItemDeductionsItem].self, forKey: .deductions)
        self.taxableBase = try container.decode(String.self, forKey: .taxableBase)
        self.npd = try container.decode(String.self, forKey: .npd)
        self.gpm = try container.decode(String.self, forKey: .gpm)
        self.sodraEmployee = try container.decode(String.self, forKey: .sodraEmployee)
        self.sodraEmployer = try container.decode(String.self, forKey: .sodraEmployer)
        self.net = try container.decode(String.self, forKey: .net)
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
        try container.encode(self.additions, forKey: .additions)
        try container.encode(self.deductions, forKey: .deductions)
        try container.encode(self.taxableBase, forKey: .taxableBase)
        try container.encode(self.npd, forKey: .npd)
        try container.encode(self.gpm, forKey: .gpm)
        try container.encode(self.sodraEmployee, forKey: .sodraEmployee)
        try container.encode(self.sodraEmployer, forKey: .sodraEmployer)
        try container.encode(self.net, forKey: .net)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case contractId
        case employeeName
        case gross
        case additions
        case deductions
        case taxableBase
        case npd
        case gpm
        case sodraEmployee
        case sodraEmployer
        case net
    }
}
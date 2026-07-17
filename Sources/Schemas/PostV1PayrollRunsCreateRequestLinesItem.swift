import Foundation

public struct PostV1PayrollRunsCreateRequestLinesItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let gross: String?
    public let additions: [PostV1PayrollRunsCreateRequestLinesItemAdditionsItem]?
    public let deductions: [PostV1PayrollRunsCreateRequestLinesItemDeductionsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        gross: String? = nil,
        additions: [PostV1PayrollRunsCreateRequestLinesItemAdditionsItem]? = nil,
        deductions: [PostV1PayrollRunsCreateRequestLinesItemDeductionsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.gross = gross
        self.additions = additions
        self.deductions = deductions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.gross = try container.decodeIfPresent(String.self, forKey: .gross)
        self.additions = try container.decodeIfPresent([PostV1PayrollRunsCreateRequestLinesItemAdditionsItem].self, forKey: .additions)
        self.deductions = try container.decodeIfPresent([PostV1PayrollRunsCreateRequestLinesItemDeductionsItem].self, forKey: .deductions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encodeIfPresent(self.gross, forKey: .gross)
        try container.encodeIfPresent(self.additions, forKey: .additions)
        try container.encodeIfPresent(self.deductions, forKey: .deductions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case gross
        case additions
        case deductions
    }
}
import Foundation

public struct PostV1ReportsCostCentersResponseRowsItem: Codable, Hashable, Sendable {
    public let costCenterId: String
    public let code: String
    public let name: String
    public let income: String
    public let expenses: String
    public let result: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        costCenterId: String,
        code: String,
        name: String,
        income: String,
        expenses: String,
        result: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.costCenterId = costCenterId
        self.code = code
        self.name = name
        self.income = income
        self.expenses = expenses
        self.result = result
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.costCenterId = try container.decode(String.self, forKey: .costCenterId)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.income = try container.decode(String.self, forKey: .income)
        self.expenses = try container.decode(String.self, forKey: .expenses)
        self.result = try container.decode(String.self, forKey: .result)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.costCenterId, forKey: .costCenterId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.income, forKey: .income)
        try container.encode(self.expenses, forKey: .expenses)
        try container.encode(self.result, forKey: .result)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case costCenterId
        case code
        case name
        case income
        case expenses
        case result
    }
}
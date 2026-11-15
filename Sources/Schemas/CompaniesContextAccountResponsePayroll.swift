import Foundation

public struct CompaniesContextAccountResponsePayroll: Codable, Hashable, Sendable {
    public let country: String
    public let engine: Bool
    public let employeeFields: [CompaniesContextAccountResponsePayrollEmployeeFieldsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        country: String,
        engine: Bool,
        employeeFields: [CompaniesContextAccountResponsePayrollEmployeeFieldsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.country = country
        self.engine = engine
        self.employeeFields = employeeFields
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.country = try container.decode(String.self, forKey: .country)
        self.engine = try container.decode(Bool.self, forKey: .engine)
        self.employeeFields = try container.decode([CompaniesContextAccountResponsePayrollEmployeeFieldsItem].self, forKey: .employeeFields)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.engine, forKey: .engine)
        try container.encode(self.employeeFields, forKey: .employeeFields)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case country
        case engine
        case employeeFields
    }
}
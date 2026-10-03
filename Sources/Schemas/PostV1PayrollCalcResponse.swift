import Foundation

public struct PostV1PayrollCalcResponse: Codable, Hashable, Sendable {
    public let countryCode: String
    public let taxAllowance: String
    public let incomeTax: String
    public let employeeContributions: String
    public let employerContributions: String
    public let components: [PostV1PayrollCalcResponseComponentsItem]
    public let net: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        taxAllowance: String,
        incomeTax: String,
        employeeContributions: String,
        employerContributions: String,
        components: [PostV1PayrollCalcResponseComponentsItem],
        net: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.taxAllowance = taxAllowance
        self.incomeTax = incomeTax
        self.employeeContributions = employeeContributions
        self.employerContributions = employerContributions
        self.components = components
        self.net = net
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.taxAllowance = try container.decode(String.self, forKey: .taxAllowance)
        self.incomeTax = try container.decode(String.self, forKey: .incomeTax)
        self.employeeContributions = try container.decode(String.self, forKey: .employeeContributions)
        self.employerContributions = try container.decode(String.self, forKey: .employerContributions)
        self.components = try container.decode([PostV1PayrollCalcResponseComponentsItem].self, forKey: .components)
        self.net = try container.decode(String.self, forKey: .net)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.taxAllowance, forKey: .taxAllowance)
        try container.encode(self.incomeTax, forKey: .incomeTax)
        try container.encode(self.employeeContributions, forKey: .employeeContributions)
        try container.encode(self.employerContributions, forKey: .employerContributions)
        try container.encode(self.components, forKey: .components)
        try container.encode(self.net, forKey: .net)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case taxAllowance
        case incomeTax
        case employeeContributions
        case employerContributions
        case components
        case net
    }
}
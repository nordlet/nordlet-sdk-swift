import Foundation

public struct PlPit11GenerateDeclarationsResponsePersonsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let firstName: String
    public let lastName: String
    public let pesel: Nullable<String>
    public let revenue: String
    public let deductibleCosts: String
    public let advanceWithheld: String
    public let socialContributions: String
    public let healthContributions: String
    public let fileName: String
    public let xml: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        firstName: String,
        lastName: String,
        pesel: Nullable<String>,
        revenue: String,
        deductibleCosts: String,
        advanceWithheld: String,
        socialContributions: String,
        healthContributions: String,
        fileName: String,
        xml: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.firstName = firstName
        self.lastName = lastName
        self.pesel = pesel
        self.revenue = revenue
        self.deductibleCosts = deductibleCosts
        self.advanceWithheld = advanceWithheld
        self.socialContributions = socialContributions
        self.healthContributions = healthContributions
        self.fileName = fileName
        self.xml = xml
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.pesel = try container.decode(Nullable<String>.self, forKey: .pesel)
        self.revenue = try container.decode(String.self, forKey: .revenue)
        self.deductibleCosts = try container.decode(String.self, forKey: .deductibleCosts)
        self.advanceWithheld = try container.decode(String.self, forKey: .advanceWithheld)
        self.socialContributions = try container.decode(String.self, forKey: .socialContributions)
        self.healthContributions = try container.decode(String.self, forKey: .healthContributions)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.pesel, forKey: .pesel)
        try container.encode(self.revenue, forKey: .revenue)
        try container.encode(self.deductibleCosts, forKey: .deductibleCosts)
        try container.encode(self.advanceWithheld, forKey: .advanceWithheld)
        try container.encode(self.socialContributions, forKey: .socialContributions)
        try container.encode(self.healthContributions, forKey: .healthContributions)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case firstName
        case lastName
        case pesel
        case revenue
        case deductibleCosts
        case advanceWithheld
        case socialContributions
        case healthContributions
        case fileName
        case xml
        case warnings
    }
}
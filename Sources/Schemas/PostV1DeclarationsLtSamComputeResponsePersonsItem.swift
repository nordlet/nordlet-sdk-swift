import Foundation

public struct PostV1DeclarationsLtSamComputeResponsePersonsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let personalCode: Nullable<String>
    public let socialInsuranceNo: Nullable<String>
    public let firstName: String
    public let lastName: String
    public let insuredIncome: String
    public let contributions: String
    public let tariffPercent: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        personalCode: Nullable<String>,
        socialInsuranceNo: Nullable<String>,
        firstName: String,
        lastName: String,
        insuredIncome: String,
        contributions: String,
        tariffPercent: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.personalCode = personalCode
        self.socialInsuranceNo = socialInsuranceNo
        self.firstName = firstName
        self.lastName = lastName
        self.insuredIncome = insuredIncome
        self.contributions = contributions
        self.tariffPercent = tariffPercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.personalCode = try container.decode(Nullable<String>.self, forKey: .personalCode)
        self.socialInsuranceNo = try container.decode(Nullable<String>.self, forKey: .socialInsuranceNo)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.insuredIncome = try container.decode(String.self, forKey: .insuredIncome)
        self.contributions = try container.decode(String.self, forKey: .contributions)
        self.tariffPercent = try container.decode(String.self, forKey: .tariffPercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.personalCode, forKey: .personalCode)
        try container.encode(self.socialInsuranceNo, forKey: .socialInsuranceNo)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.insuredIncome, forKey: .insuredIncome)
        try container.encode(self.contributions, forKey: .contributions)
        try container.encode(self.tariffPercent, forKey: .tariffPercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case personalCode
        case socialInsuranceNo
        case firstName
        case lastName
        case insuredIncome
        case contributions
        case tariffPercent
    }
}
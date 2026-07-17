import Foundation

public struct PostV1DeclarationsLtSdGenerateResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let contractId: String
    public let contractNo: String
    public let personalCode: Nullable<String>
    public let socialInsuranceNo: Nullable<String>
    public let firstName: String
    public let lastName: String
    public let date: String
    public let professionCode: Nullable<String>
    public let endReason: Nullable<String>
    public let finalInsuredIncome: Nullable<String>
    public let finalContributions: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        contractId: String,
        contractNo: String,
        personalCode: Nullable<String>,
        socialInsuranceNo: Nullable<String>,
        firstName: String,
        lastName: String,
        date: String,
        professionCode: Nullable<String>,
        endReason: Nullable<String>,
        finalInsuredIncome: Nullable<String>,
        finalContributions: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.contractId = contractId
        self.contractNo = contractNo
        self.personalCode = personalCode
        self.socialInsuranceNo = socialInsuranceNo
        self.firstName = firstName
        self.lastName = lastName
        self.date = date
        self.professionCode = professionCode
        self.endReason = endReason
        self.finalInsuredIncome = finalInsuredIncome
        self.finalContributions = finalContributions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.contractId = try container.decode(String.self, forKey: .contractId)
        self.contractNo = try container.decode(String.self, forKey: .contractNo)
        self.personalCode = try container.decode(Nullable<String>.self, forKey: .personalCode)
        self.socialInsuranceNo = try container.decode(Nullable<String>.self, forKey: .socialInsuranceNo)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.date = try container.decode(String.self, forKey: .date)
        self.professionCode = try container.decode(Nullable<String>.self, forKey: .professionCode)
        self.endReason = try container.decode(Nullable<String>.self, forKey: .endReason)
        self.finalInsuredIncome = try container.decode(Nullable<String>.self, forKey: .finalInsuredIncome)
        self.finalContributions = try container.decode(Nullable<String>.self, forKey: .finalContributions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.contractId, forKey: .contractId)
        try container.encode(self.contractNo, forKey: .contractNo)
        try container.encode(self.personalCode, forKey: .personalCode)
        try container.encode(self.socialInsuranceNo, forKey: .socialInsuranceNo)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.professionCode, forKey: .professionCode)
        try container.encode(self.endReason, forKey: .endReason)
        try container.encode(self.finalInsuredIncome, forKey: .finalInsuredIncome)
        try container.encode(self.finalContributions, forKey: .finalContributions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case contractId
        case contractNo
        case personalCode
        case socialInsuranceNo
        case firstName
        case lastName
        case date
        case professionCode
        case endReason
        case finalInsuredIncome
        case finalContributions
    }
}
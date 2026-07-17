import Foundation

public struct PostV1HrEmployeesListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let code: Nullable<String>
    public let firstName: String
    public let lastName: String
    public let personalCode: Nullable<String>
    public let birthDate: Nullable<String>
    public let email: Nullable<String>
    public let phone: Nullable<String>
    public let address: Nullable<PostV1HrEmployeesListResponseRowsItemAddress>
    public let iban: Nullable<String>
    public let socialInsuranceNo: Nullable<String>
    public let socialInsuranceStart: Nullable<String>
    public let hireDate: Nullable<String>
    public let terminationDate: Nullable<String>
    public let applyNpd: Bool
    public let npdOverride: Nullable<String>
    public let pensionAccumulation: Bool
    public let status: PostV1HrEmployeesListResponseRowsItemStatus
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: Nullable<String>,
        firstName: String,
        lastName: String,
        personalCode: Nullable<String>,
        birthDate: Nullable<String>,
        email: Nullable<String>,
        phone: Nullable<String>,
        address: Nullable<PostV1HrEmployeesListResponseRowsItemAddress>,
        iban: Nullable<String>,
        socialInsuranceNo: Nullable<String>,
        socialInsuranceStart: Nullable<String>,
        hireDate: Nullable<String>,
        terminationDate: Nullable<String>,
        applyNpd: Bool,
        npdOverride: Nullable<String>,
        pensionAccumulation: Bool,
        status: PostV1HrEmployeesListResponseRowsItemStatus,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.firstName = firstName
        self.lastName = lastName
        self.personalCode = personalCode
        self.birthDate = birthDate
        self.email = email
        self.phone = phone
        self.address = address
        self.iban = iban
        self.socialInsuranceNo = socialInsuranceNo
        self.socialInsuranceStart = socialInsuranceStart
        self.hireDate = hireDate
        self.terminationDate = terminationDate
        self.applyNpd = applyNpd
        self.npdOverride = npdOverride
        self.pensionAccumulation = pensionAccumulation
        self.status = status
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.personalCode = try container.decode(Nullable<String>.self, forKey: .personalCode)
        self.birthDate = try container.decode(Nullable<String>.self, forKey: .birthDate)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.phone = try container.decode(Nullable<String>.self, forKey: .phone)
        self.address = try container.decode(Nullable<PostV1HrEmployeesListResponseRowsItemAddress>.self, forKey: .address)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.socialInsuranceNo = try container.decode(Nullable<String>.self, forKey: .socialInsuranceNo)
        self.socialInsuranceStart = try container.decode(Nullable<String>.self, forKey: .socialInsuranceStart)
        self.hireDate = try container.decode(Nullable<String>.self, forKey: .hireDate)
        self.terminationDate = try container.decode(Nullable<String>.self, forKey: .terminationDate)
        self.applyNpd = try container.decode(Bool.self, forKey: .applyNpd)
        self.npdOverride = try container.decode(Nullable<String>.self, forKey: .npdOverride)
        self.pensionAccumulation = try container.decode(Bool.self, forKey: .pensionAccumulation)
        self.status = try container.decode(PostV1HrEmployeesListResponseRowsItemStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.personalCode, forKey: .personalCode)
        try container.encode(self.birthDate, forKey: .birthDate)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.phone, forKey: .phone)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.socialInsuranceNo, forKey: .socialInsuranceNo)
        try container.encode(self.socialInsuranceStart, forKey: .socialInsuranceStart)
        try container.encode(self.hireDate, forKey: .hireDate)
        try container.encode(self.terminationDate, forKey: .terminationDate)
        try container.encode(self.applyNpd, forKey: .applyNpd)
        try container.encode(self.npdOverride, forKey: .npdOverride)
        try container.encode(self.pensionAccumulation, forKey: .pensionAccumulation)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case firstName
        case lastName
        case personalCode
        case birthDate
        case email
        case phone
        case address
        case iban
        case socialInsuranceNo
        case socialInsuranceStart
        case hireDate
        case terminationDate
        case applyNpd
        case npdOverride
        case pensionAccumulation
        case status
        case notes
        case createdAt
    }
}
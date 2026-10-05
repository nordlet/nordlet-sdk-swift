import Foundation

extension Requests {
    public struct EmployeesCreateHrRequest: Codable, Hashable, Sendable {
        public let code: String?
        public let firstName: String
        public let lastName: String
        public let personalCode: String?
        public let birthDate: CalendarDate?
        public let email: String?
        public let phone: String?
        public let address: EmployeesCreateHrRequestAddress?
        public let iban: String?
        public let socialInsuranceNo: String?
        public let socialInsuranceStart: CalendarDate?
        public let hireDate: CalendarDate?
        public let applyAllowance: Bool?
        public let allowanceOverride: Nullable<String>?
        public let pensionAccumulation: Bool?
        public let payrollOptions: [String: String]?
        public let notes: String?
        public let attributes: [EmployeesCreateHrRequestAttributesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String? = nil,
            firstName: String,
            lastName: String,
            personalCode: String? = nil,
            birthDate: CalendarDate? = nil,
            email: String? = nil,
            phone: String? = nil,
            address: EmployeesCreateHrRequestAddress? = nil,
            iban: String? = nil,
            socialInsuranceNo: String? = nil,
            socialInsuranceStart: CalendarDate? = nil,
            hireDate: CalendarDate? = nil,
            applyAllowance: Bool? = nil,
            allowanceOverride: Nullable<String>? = nil,
            pensionAccumulation: Bool? = nil,
            payrollOptions: [String: String]? = nil,
            notes: String? = nil,
            attributes: [EmployeesCreateHrRequestAttributesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.applyAllowance = applyAllowance
            self.allowanceOverride = allowanceOverride
            self.pensionAccumulation = pensionAccumulation
            self.payrollOptions = payrollOptions
            self.notes = notes
            self.attributes = attributes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.firstName = try container.decode(String.self, forKey: .firstName)
            self.lastName = try container.decode(String.self, forKey: .lastName)
            self.personalCode = try container.decodeIfPresent(String.self, forKey: .personalCode)
            self.birthDate = try container.decodeIfPresent(CalendarDate.self, forKey: .birthDate)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.address = try container.decodeIfPresent(EmployeesCreateHrRequestAddress.self, forKey: .address)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.socialInsuranceNo = try container.decodeIfPresent(String.self, forKey: .socialInsuranceNo)
            self.socialInsuranceStart = try container.decodeIfPresent(CalendarDate.self, forKey: .socialInsuranceStart)
            self.hireDate = try container.decodeIfPresent(CalendarDate.self, forKey: .hireDate)
            self.applyAllowance = try container.decodeIfPresent(Bool.self, forKey: .applyAllowance)
            self.allowanceOverride = try container.decodeNullableIfPresent(String.self, forKey: .allowanceOverride)
            self.pensionAccumulation = try container.decodeIfPresent(Bool.self, forKey: .pensionAccumulation)
            self.payrollOptions = try container.decodeIfPresent([String: String].self, forKey: .payrollOptions)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.attributes = try container.decodeIfPresent([EmployeesCreateHrRequestAttributesItem].self, forKey: .attributes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encode(self.firstName, forKey: .firstName)
            try container.encode(self.lastName, forKey: .lastName)
            try container.encodeIfPresent(self.personalCode, forKey: .personalCode)
            try container.encodeIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.socialInsuranceNo, forKey: .socialInsuranceNo)
            try container.encodeIfPresent(self.socialInsuranceStart, forKey: .socialInsuranceStart)
            try container.encodeIfPresent(self.hireDate, forKey: .hireDate)
            try container.encodeIfPresent(self.applyAllowance, forKey: .applyAllowance)
            try container.encodeNullableIfPresent(self.allowanceOverride, forKey: .allowanceOverride)
            try container.encodeIfPresent(self.pensionAccumulation, forKey: .pensionAccumulation)
            try container.encodeIfPresent(self.payrollOptions, forKey: .payrollOptions)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.attributes, forKey: .attributes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
            case applyAllowance
            case allowanceOverride
            case pensionAccumulation
            case payrollOptions
            case notes
            case attributes
        }
    }
}
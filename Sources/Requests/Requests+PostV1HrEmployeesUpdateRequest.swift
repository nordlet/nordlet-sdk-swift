import Foundation

extension Requests {
    public struct PostV1HrEmployeesUpdateRequest: Codable, Hashable, Sendable {
        public let code: Nullable<String>?
        public let firstName: String?
        public let lastName: String?
        public let personalCode: Nullable<String>?
        public let birthDate: Nullable<String>?
        public let email: Nullable<String>?
        public let phone: Nullable<String>?
        public let address: Nullable<PostV1HrEmployeesUpdateRequestAddress>?
        public let iban: Nullable<String>?
        public let socialInsuranceNo: Nullable<String>?
        public let socialInsuranceStart: Nullable<String>?
        public let hireDate: Nullable<String>?
        public let applyAllowance: Bool?
        public let allowanceOverride: Nullable<String>?
        public let pensionAccumulation: Bool?
        public let payrollOptions: [String: String]?
        public let notes: Nullable<String>?
        public let attributes: [PostV1HrEmployeesUpdateRequestAttributesItem]?
        public let id: String
        public let terminationDate: Nullable<String>?
        public let status: PostV1HrEmployeesUpdateRequestStatus?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: Nullable<String>? = nil,
            firstName: String? = nil,
            lastName: String? = nil,
            personalCode: Nullable<String>? = nil,
            birthDate: Nullable<String>? = nil,
            email: Nullable<String>? = nil,
            phone: Nullable<String>? = nil,
            address: Nullable<PostV1HrEmployeesUpdateRequestAddress>? = nil,
            iban: Nullable<String>? = nil,
            socialInsuranceNo: Nullable<String>? = nil,
            socialInsuranceStart: Nullable<String>? = nil,
            hireDate: Nullable<String>? = nil,
            applyAllowance: Bool? = nil,
            allowanceOverride: Nullable<String>? = nil,
            pensionAccumulation: Bool? = nil,
            payrollOptions: [String: String]? = nil,
            notes: Nullable<String>? = nil,
            attributes: [PostV1HrEmployeesUpdateRequestAttributesItem]? = nil,
            id: String,
            terminationDate: Nullable<String>? = nil,
            status: PostV1HrEmployeesUpdateRequestStatus? = nil,
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
            self.id = id
            self.terminationDate = terminationDate
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decodeNullableIfPresent(String.self, forKey: .code)
            self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
            self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
            self.personalCode = try container.decodeNullableIfPresent(String.self, forKey: .personalCode)
            self.birthDate = try container.decodeNullableIfPresent(String.self, forKey: .birthDate)
            self.email = try container.decodeNullableIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeNullableIfPresent(String.self, forKey: .phone)
            self.address = try container.decodeNullableIfPresent(PostV1HrEmployeesUpdateRequestAddress.self, forKey: .address)
            self.iban = try container.decodeNullableIfPresent(String.self, forKey: .iban)
            self.socialInsuranceNo = try container.decodeNullableIfPresent(String.self, forKey: .socialInsuranceNo)
            self.socialInsuranceStart = try container.decodeNullableIfPresent(String.self, forKey: .socialInsuranceStart)
            self.hireDate = try container.decodeNullableIfPresent(String.self, forKey: .hireDate)
            self.applyAllowance = try container.decodeIfPresent(Bool.self, forKey: .applyAllowance)
            self.allowanceOverride = try container.decodeNullableIfPresent(String.self, forKey: .allowanceOverride)
            self.pensionAccumulation = try container.decodeIfPresent(Bool.self, forKey: .pensionAccumulation)
            self.payrollOptions = try container.decodeIfPresent([String: String].self, forKey: .payrollOptions)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.attributes = try container.decodeIfPresent([PostV1HrEmployeesUpdateRequestAttributesItem].self, forKey: .attributes)
            self.id = try container.decode(String.self, forKey: .id)
            self.terminationDate = try container.decodeNullableIfPresent(String.self, forKey: .terminationDate)
            self.status = try container.decodeIfPresent(PostV1HrEmployeesUpdateRequestStatus.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.firstName, forKey: .firstName)
            try container.encodeIfPresent(self.lastName, forKey: .lastName)
            try container.encodeNullableIfPresent(self.personalCode, forKey: .personalCode)
            try container.encodeNullableIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeNullableIfPresent(self.email, forKey: .email)
            try container.encodeNullableIfPresent(self.phone, forKey: .phone)
            try container.encodeNullableIfPresent(self.address, forKey: .address)
            try container.encodeNullableIfPresent(self.iban, forKey: .iban)
            try container.encodeNullableIfPresent(self.socialInsuranceNo, forKey: .socialInsuranceNo)
            try container.encodeNullableIfPresent(self.socialInsuranceStart, forKey: .socialInsuranceStart)
            try container.encodeNullableIfPresent(self.hireDate, forKey: .hireDate)
            try container.encodeIfPresent(self.applyAllowance, forKey: .applyAllowance)
            try container.encodeNullableIfPresent(self.allowanceOverride, forKey: .allowanceOverride)
            try container.encodeIfPresent(self.pensionAccumulation, forKey: .pensionAccumulation)
            try container.encodeIfPresent(self.payrollOptions, forKey: .payrollOptions)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.attributes, forKey: .attributes)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.terminationDate, forKey: .terminationDate)
            try container.encodeIfPresent(self.status, forKey: .status)
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
            case id
            case terminationDate
            case status
        }
    }
}
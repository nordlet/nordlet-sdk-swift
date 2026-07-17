import Foundation

extension Requests {
    public struct PostV1HrEmployeesUpdateRequest: Codable, Hashable, Sendable {
        public let code: String?
        public let firstName: String?
        public let lastName: String?
        public let personalCode: String?
        public let birthDate: String?
        public let email: String?
        public let phone: String?
        public let address: PostV1HrEmployeesUpdateRequestAddress?
        public let iban: String?
        public let socialInsuranceNo: String?
        public let socialInsuranceStart: String?
        public let hireDate: String?
        public let applyNpd: Bool?
        public let npdOverride: Nullable<String>?
        public let pensionAccumulation: Bool?
        public let notes: String?
        public let id: String
        public let terminationDate: String?
        public let status: PostV1HrEmployeesUpdateRequestStatus?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String? = nil,
            firstName: String? = nil,
            lastName: String? = nil,
            personalCode: String? = nil,
            birthDate: String? = nil,
            email: String? = nil,
            phone: String? = nil,
            address: PostV1HrEmployeesUpdateRequestAddress? = nil,
            iban: String? = nil,
            socialInsuranceNo: String? = nil,
            socialInsuranceStart: String? = nil,
            hireDate: String? = nil,
            applyNpd: Bool? = nil,
            npdOverride: Nullable<String>? = nil,
            pensionAccumulation: Bool? = nil,
            notes: String? = nil,
            id: String,
            terminationDate: String? = nil,
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
            self.applyNpd = applyNpd
            self.npdOverride = npdOverride
            self.pensionAccumulation = pensionAccumulation
            self.notes = notes
            self.id = id
            self.terminationDate = terminationDate
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
            self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
            self.personalCode = try container.decodeIfPresent(String.self, forKey: .personalCode)
            self.birthDate = try container.decodeIfPresent(String.self, forKey: .birthDate)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.address = try container.decodeIfPresent(PostV1HrEmployeesUpdateRequestAddress.self, forKey: .address)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.socialInsuranceNo = try container.decodeIfPresent(String.self, forKey: .socialInsuranceNo)
            self.socialInsuranceStart = try container.decodeIfPresent(String.self, forKey: .socialInsuranceStart)
            self.hireDate = try container.decodeIfPresent(String.self, forKey: .hireDate)
            self.applyNpd = try container.decodeIfPresent(Bool.self, forKey: .applyNpd)
            self.npdOverride = try container.decodeNullableIfPresent(String.self, forKey: .npdOverride)
            self.pensionAccumulation = try container.decodeIfPresent(Bool.self, forKey: .pensionAccumulation)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.id = try container.decode(String.self, forKey: .id)
            self.terminationDate = try container.decodeIfPresent(String.self, forKey: .terminationDate)
            self.status = try container.decodeIfPresent(PostV1HrEmployeesUpdateRequestStatus.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.firstName, forKey: .firstName)
            try container.encodeIfPresent(self.lastName, forKey: .lastName)
            try container.encodeIfPresent(self.personalCode, forKey: .personalCode)
            try container.encodeIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.socialInsuranceNo, forKey: .socialInsuranceNo)
            try container.encodeIfPresent(self.socialInsuranceStart, forKey: .socialInsuranceStart)
            try container.encodeIfPresent(self.hireDate, forKey: .hireDate)
            try container.encodeIfPresent(self.applyNpd, forKey: .applyNpd)
            try container.encodeNullableIfPresent(self.npdOverride, forKey: .npdOverride)
            try container.encodeIfPresent(self.pensionAccumulation, forKey: .pensionAccumulation)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.terminationDate, forKey: .terminationDate)
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
            case applyNpd
            case npdOverride
            case pensionAccumulation
            case notes
            case id
            case terminationDate
            case status
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1PartnersUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let type: PostV1PartnersUpdateRequestType?
        public let name: String?
        public let code: Nullable<String>?
        public let vatCode: Nullable<String>?
        public let peppolId: Nullable<String>?
        public let email: Nullable<String>?
        public let phone: Nullable<String>?
        public let selfEmploymentCertNo: Nullable<String>?
        public let birthDate: Nullable<String>?
        public let isCustomer: Bool?
        public let isSupplier: Bool?
        public let paymentTermDays: Nullable<Int64>?
        public let creditLimit: Nullable<String>?
        public let priceListId: Nullable<String>?
        public let groupId: Nullable<String>?
        public let statusId: Nullable<String>?
        public let address: Nullable<PostV1PartnersUpdateRequestAddress>?
        public let correspondenceAddress: Nullable<PostV1PartnersUpdateRequestCorrespondenceAddress>?
        public let notes: Nullable<String>?
        public let documentRef: String?
        public let shortName: Nullable<String>?
        public let website: Nullable<String>?
        public let fax: Nullable<String>?
        public let eoriCode: Nullable<String>?
        public let otherCode: Nullable<String>?
        public let foreignTaxNumber: Nullable<String>?
        public let autoDebtReminder: Bool?
        public let lateInterestPercent: Nullable<String>?
        public let firstCallDate: Nullable<String>?
        public let lastCallDate: Nullable<String>?
        public let nextCallDate: Nullable<String>?
        public let rating: Nullable<Int64>?
        public let isEmployee: Bool?
        public let isGroupMember: Bool?
        public let isActive: Bool?
        public let legalCountryClass: Nullable<PostV1PartnersUpdateRequestLegalCountryClass>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            type: PostV1PartnersUpdateRequestType? = nil,
            name: String? = nil,
            code: Nullable<String>? = nil,
            vatCode: Nullable<String>? = nil,
            peppolId: Nullable<String>? = nil,
            email: Nullable<String>? = nil,
            phone: Nullable<String>? = nil,
            selfEmploymentCertNo: Nullable<String>? = nil,
            birthDate: Nullable<String>? = nil,
            isCustomer: Bool? = nil,
            isSupplier: Bool? = nil,
            paymentTermDays: Nullable<Int64>? = nil,
            creditLimit: Nullable<String>? = nil,
            priceListId: Nullable<String>? = nil,
            groupId: Nullable<String>? = nil,
            statusId: Nullable<String>? = nil,
            address: Nullable<PostV1PartnersUpdateRequestAddress>? = nil,
            correspondenceAddress: Nullable<PostV1PartnersUpdateRequestCorrespondenceAddress>? = nil,
            notes: Nullable<String>? = nil,
            documentRef: String? = nil,
            shortName: Nullable<String>? = nil,
            website: Nullable<String>? = nil,
            fax: Nullable<String>? = nil,
            eoriCode: Nullable<String>? = nil,
            otherCode: Nullable<String>? = nil,
            foreignTaxNumber: Nullable<String>? = nil,
            autoDebtReminder: Bool? = nil,
            lateInterestPercent: Nullable<String>? = nil,
            firstCallDate: Nullable<String>? = nil,
            lastCallDate: Nullable<String>? = nil,
            nextCallDate: Nullable<String>? = nil,
            rating: Nullable<Int64>? = nil,
            isEmployee: Bool? = nil,
            isGroupMember: Bool? = nil,
            isActive: Bool? = nil,
            legalCountryClass: Nullable<PostV1PartnersUpdateRequestLegalCountryClass>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.type = type
            self.name = name
            self.code = code
            self.vatCode = vatCode
            self.peppolId = peppolId
            self.email = email
            self.phone = phone
            self.selfEmploymentCertNo = selfEmploymentCertNo
            self.birthDate = birthDate
            self.isCustomer = isCustomer
            self.isSupplier = isSupplier
            self.paymentTermDays = paymentTermDays
            self.creditLimit = creditLimit
            self.priceListId = priceListId
            self.groupId = groupId
            self.statusId = statusId
            self.address = address
            self.correspondenceAddress = correspondenceAddress
            self.notes = notes
            self.documentRef = documentRef
            self.shortName = shortName
            self.website = website
            self.fax = fax
            self.eoriCode = eoriCode
            self.otherCode = otherCode
            self.foreignTaxNumber = foreignTaxNumber
            self.autoDebtReminder = autoDebtReminder
            self.lateInterestPercent = lateInterestPercent
            self.firstCallDate = firstCallDate
            self.lastCallDate = lastCallDate
            self.nextCallDate = nextCallDate
            self.rating = rating
            self.isEmployee = isEmployee
            self.isGroupMember = isGroupMember
            self.isActive = isActive
            self.legalCountryClass = legalCountryClass
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.type = try container.decodeIfPresent(PostV1PartnersUpdateRequestType.self, forKey: .type)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.code = try container.decodeNullableIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeNullableIfPresent(String.self, forKey: .vatCode)
            self.peppolId = try container.decodeNullableIfPresent(String.self, forKey: .peppolId)
            self.email = try container.decodeNullableIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeNullableIfPresent(String.self, forKey: .phone)
            self.selfEmploymentCertNo = try container.decodeNullableIfPresent(String.self, forKey: .selfEmploymentCertNo)
            self.birthDate = try container.decodeNullableIfPresent(String.self, forKey: .birthDate)
            self.isCustomer = try container.decodeIfPresent(Bool.self, forKey: .isCustomer)
            self.isSupplier = try container.decodeIfPresent(Bool.self, forKey: .isSupplier)
            self.paymentTermDays = try container.decodeNullableIfPresent(Int64.self, forKey: .paymentTermDays)
            self.creditLimit = try container.decodeNullableIfPresent(String.self, forKey: .creditLimit)
            self.priceListId = try container.decodeNullableIfPresent(String.self, forKey: .priceListId)
            self.groupId = try container.decodeNullableIfPresent(String.self, forKey: .groupId)
            self.statusId = try container.decodeNullableIfPresent(String.self, forKey: .statusId)
            self.address = try container.decodeNullableIfPresent(PostV1PartnersUpdateRequestAddress.self, forKey: .address)
            self.correspondenceAddress = try container.decodeNullableIfPresent(PostV1PartnersUpdateRequestCorrespondenceAddress.self, forKey: .correspondenceAddress)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.shortName = try container.decodeNullableIfPresent(String.self, forKey: .shortName)
            self.website = try container.decodeNullableIfPresent(String.self, forKey: .website)
            self.fax = try container.decodeNullableIfPresent(String.self, forKey: .fax)
            self.eoriCode = try container.decodeNullableIfPresent(String.self, forKey: .eoriCode)
            self.otherCode = try container.decodeNullableIfPresent(String.self, forKey: .otherCode)
            self.foreignTaxNumber = try container.decodeNullableIfPresent(String.self, forKey: .foreignTaxNumber)
            self.autoDebtReminder = try container.decodeIfPresent(Bool.self, forKey: .autoDebtReminder)
            self.lateInterestPercent = try container.decodeNullableIfPresent(String.self, forKey: .lateInterestPercent)
            self.firstCallDate = try container.decodeNullableIfPresent(String.self, forKey: .firstCallDate)
            self.lastCallDate = try container.decodeNullableIfPresent(String.self, forKey: .lastCallDate)
            self.nextCallDate = try container.decodeNullableIfPresent(String.self, forKey: .nextCallDate)
            self.rating = try container.decodeNullableIfPresent(Int64.self, forKey: .rating)
            self.isEmployee = try container.decodeIfPresent(Bool.self, forKey: .isEmployee)
            self.isGroupMember = try container.decodeIfPresent(Bool.self, forKey: .isGroupMember)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.legalCountryClass = try container.decodeNullableIfPresent(PostV1PartnersUpdateRequestLegalCountryClass.self, forKey: .legalCountryClass)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.code, forKey: .code)
            try container.encodeNullableIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeNullableIfPresent(self.peppolId, forKey: .peppolId)
            try container.encodeNullableIfPresent(self.email, forKey: .email)
            try container.encodeNullableIfPresent(self.phone, forKey: .phone)
            try container.encodeNullableIfPresent(self.selfEmploymentCertNo, forKey: .selfEmploymentCertNo)
            try container.encodeNullableIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeIfPresent(self.isCustomer, forKey: .isCustomer)
            try container.encodeIfPresent(self.isSupplier, forKey: .isSupplier)
            try container.encodeNullableIfPresent(self.paymentTermDays, forKey: .paymentTermDays)
            try container.encodeNullableIfPresent(self.creditLimit, forKey: .creditLimit)
            try container.encodeNullableIfPresent(self.priceListId, forKey: .priceListId)
            try container.encodeNullableIfPresent(self.groupId, forKey: .groupId)
            try container.encodeNullableIfPresent(self.statusId, forKey: .statusId)
            try container.encodeNullableIfPresent(self.address, forKey: .address)
            try container.encodeNullableIfPresent(self.correspondenceAddress, forKey: .correspondenceAddress)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
            try container.encodeNullableIfPresent(self.shortName, forKey: .shortName)
            try container.encodeNullableIfPresent(self.website, forKey: .website)
            try container.encodeNullableIfPresent(self.fax, forKey: .fax)
            try container.encodeNullableIfPresent(self.eoriCode, forKey: .eoriCode)
            try container.encodeNullableIfPresent(self.otherCode, forKey: .otherCode)
            try container.encodeNullableIfPresent(self.foreignTaxNumber, forKey: .foreignTaxNumber)
            try container.encodeIfPresent(self.autoDebtReminder, forKey: .autoDebtReminder)
            try container.encodeNullableIfPresent(self.lateInterestPercent, forKey: .lateInterestPercent)
            try container.encodeNullableIfPresent(self.firstCallDate, forKey: .firstCallDate)
            try container.encodeNullableIfPresent(self.lastCallDate, forKey: .lastCallDate)
            try container.encodeNullableIfPresent(self.nextCallDate, forKey: .nextCallDate)
            try container.encodeNullableIfPresent(self.rating, forKey: .rating)
            try container.encodeIfPresent(self.isEmployee, forKey: .isEmployee)
            try container.encodeIfPresent(self.isGroupMember, forKey: .isGroupMember)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeNullableIfPresent(self.legalCountryClass, forKey: .legalCountryClass)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case type
            case name
            case code
            case vatCode
            case peppolId
            case email
            case phone
            case selfEmploymentCertNo
            case birthDate
            case isCustomer
            case isSupplier
            case paymentTermDays
            case creditLimit
            case priceListId
            case groupId
            case statusId
            case address
            case correspondenceAddress
            case notes
            case documentRef
            case shortName
            case website
            case fax
            case eoriCode
            case otherCode
            case foreignTaxNumber
            case autoDebtReminder
            case lateInterestPercent
            case firstCallDate
            case lastCallDate
            case nextCallDate
            case rating
            case isEmployee
            case isGroupMember
            case isActive
            case legalCountryClass
        }
    }
}
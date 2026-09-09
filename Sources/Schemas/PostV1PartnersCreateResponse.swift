import Foundation

public struct PostV1PartnersCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1PartnersCreateResponseType
    public let name: String
    public let code: Nullable<String>
    public let vatCode: Nullable<String>
    public let peppolId: Nullable<String>
    public let email: Nullable<String>
    public let phone: Nullable<String>
    public let selfEmploymentCertNo: Nullable<String>
    public let birthDate: Nullable<String>
    public let isCustomer: Bool
    public let isSupplier: Bool
    public let paymentTermDays: Nullable<Int64>
    public let creditLimit: Nullable<String>
    public let priceListId: Nullable<String>
    public let groupId: Nullable<String>
    public let statusId: Nullable<String>
    public let vatValid: Nullable<Bool>
    public let vatValidatedAt: Nullable<String>
    public let address: Nullable<PostV1PartnersCreateResponseAddress>
    public let correspondenceAddress: Nullable<PostV1PartnersCreateResponseCorrespondenceAddress>
    public let notes: Nullable<String>
    public let documentRef: Nullable<String>
    public let shortName: Nullable<String>
    public let website: Nullable<String>
    public let fax: Nullable<String>
    public let eoriCode: Nullable<String>
    public let otherCode: Nullable<String>
    public let foreignTaxNumber: Nullable<String>
    public let autoDebtReminder: Bool
    public let lateInterestPercent: Nullable<String>
    public let firstCallDate: Nullable<String>
    public let lastCallDate: Nullable<String>
    public let nextCallDate: Nullable<String>
    public let rating: Nullable<Int64>
    public let isEmployee: Bool
    public let isGroupMember: Bool
    public let isActive: Bool
    public let legalCountryClass: Nullable<PostV1PartnersCreateResponseLegalCountryClass>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1PartnersCreateResponseType,
        name: String,
        code: Nullable<String>,
        vatCode: Nullable<String>,
        peppolId: Nullable<String>,
        email: Nullable<String>,
        phone: Nullable<String>,
        selfEmploymentCertNo: Nullable<String>,
        birthDate: Nullable<String>,
        isCustomer: Bool,
        isSupplier: Bool,
        paymentTermDays: Nullable<Int64>,
        creditLimit: Nullable<String>,
        priceListId: Nullable<String>,
        groupId: Nullable<String>,
        statusId: Nullable<String>,
        vatValid: Nullable<Bool>,
        vatValidatedAt: Nullable<String>,
        address: Nullable<PostV1PartnersCreateResponseAddress>,
        correspondenceAddress: Nullable<PostV1PartnersCreateResponseCorrespondenceAddress>,
        notes: Nullable<String>,
        documentRef: Nullable<String>,
        shortName: Nullable<String>,
        website: Nullable<String>,
        fax: Nullable<String>,
        eoriCode: Nullable<String>,
        otherCode: Nullable<String>,
        foreignTaxNumber: Nullable<String>,
        autoDebtReminder: Bool,
        lateInterestPercent: Nullable<String>,
        firstCallDate: Nullable<String>,
        lastCallDate: Nullable<String>,
        nextCallDate: Nullable<String>,
        rating: Nullable<Int64>,
        isEmployee: Bool,
        isGroupMember: Bool,
        isActive: Bool,
        legalCountryClass: Nullable<PostV1PartnersCreateResponseLegalCountryClass>,
        createdAt: String,
        updatedAt: String,
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
        self.vatValid = vatValid
        self.vatValidatedAt = vatValidatedAt
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
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1PartnersCreateResponseType.self, forKey: .type)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.peppolId = try container.decode(Nullable<String>.self, forKey: .peppolId)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.phone = try container.decode(Nullable<String>.self, forKey: .phone)
        self.selfEmploymentCertNo = try container.decode(Nullable<String>.self, forKey: .selfEmploymentCertNo)
        self.birthDate = try container.decode(Nullable<String>.self, forKey: .birthDate)
        self.isCustomer = try container.decode(Bool.self, forKey: .isCustomer)
        self.isSupplier = try container.decode(Bool.self, forKey: .isSupplier)
        self.paymentTermDays = try container.decode(Nullable<Int64>.self, forKey: .paymentTermDays)
        self.creditLimit = try container.decode(Nullable<String>.self, forKey: .creditLimit)
        self.priceListId = try container.decode(Nullable<String>.self, forKey: .priceListId)
        self.groupId = try container.decode(Nullable<String>.self, forKey: .groupId)
        self.statusId = try container.decode(Nullable<String>.self, forKey: .statusId)
        self.vatValid = try container.decode(Nullable<Bool>.self, forKey: .vatValid)
        self.vatValidatedAt = try container.decode(Nullable<String>.self, forKey: .vatValidatedAt)
        self.address = try container.decode(Nullable<PostV1PartnersCreateResponseAddress>.self, forKey: .address)
        self.correspondenceAddress = try container.decode(Nullable<PostV1PartnersCreateResponseCorrespondenceAddress>.self, forKey: .correspondenceAddress)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.documentRef = try container.decode(Nullable<String>.self, forKey: .documentRef)
        self.shortName = try container.decode(Nullable<String>.self, forKey: .shortName)
        self.website = try container.decode(Nullable<String>.self, forKey: .website)
        self.fax = try container.decode(Nullable<String>.self, forKey: .fax)
        self.eoriCode = try container.decode(Nullable<String>.self, forKey: .eoriCode)
        self.otherCode = try container.decode(Nullable<String>.self, forKey: .otherCode)
        self.foreignTaxNumber = try container.decode(Nullable<String>.self, forKey: .foreignTaxNumber)
        self.autoDebtReminder = try container.decode(Bool.self, forKey: .autoDebtReminder)
        self.lateInterestPercent = try container.decode(Nullable<String>.self, forKey: .lateInterestPercent)
        self.firstCallDate = try container.decode(Nullable<String>.self, forKey: .firstCallDate)
        self.lastCallDate = try container.decode(Nullable<String>.self, forKey: .lastCallDate)
        self.nextCallDate = try container.decode(Nullable<String>.self, forKey: .nextCallDate)
        self.rating = try container.decode(Nullable<Int64>.self, forKey: .rating)
        self.isEmployee = try container.decode(Bool.self, forKey: .isEmployee)
        self.isGroupMember = try container.decode(Bool.self, forKey: .isGroupMember)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.legalCountryClass = try container.decode(Nullable<PostV1PartnersCreateResponseLegalCountryClass>.self, forKey: .legalCountryClass)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.peppolId, forKey: .peppolId)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.phone, forKey: .phone)
        try container.encode(self.selfEmploymentCertNo, forKey: .selfEmploymentCertNo)
        try container.encode(self.birthDate, forKey: .birthDate)
        try container.encode(self.isCustomer, forKey: .isCustomer)
        try container.encode(self.isSupplier, forKey: .isSupplier)
        try container.encode(self.paymentTermDays, forKey: .paymentTermDays)
        try container.encode(self.creditLimit, forKey: .creditLimit)
        try container.encode(self.priceListId, forKey: .priceListId)
        try container.encode(self.groupId, forKey: .groupId)
        try container.encode(self.statusId, forKey: .statusId)
        try container.encode(self.vatValid, forKey: .vatValid)
        try container.encode(self.vatValidatedAt, forKey: .vatValidatedAt)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.correspondenceAddress, forKey: .correspondenceAddress)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.documentRef, forKey: .documentRef)
        try container.encode(self.shortName, forKey: .shortName)
        try container.encode(self.website, forKey: .website)
        try container.encode(self.fax, forKey: .fax)
        try container.encode(self.eoriCode, forKey: .eoriCode)
        try container.encode(self.otherCode, forKey: .otherCode)
        try container.encode(self.foreignTaxNumber, forKey: .foreignTaxNumber)
        try container.encode(self.autoDebtReminder, forKey: .autoDebtReminder)
        try container.encode(self.lateInterestPercent, forKey: .lateInterestPercent)
        try container.encode(self.firstCallDate, forKey: .firstCallDate)
        try container.encode(self.lastCallDate, forKey: .lastCallDate)
        try container.encode(self.nextCallDate, forKey: .nextCallDate)
        try container.encode(self.rating, forKey: .rating)
        try container.encode(self.isEmployee, forKey: .isEmployee)
        try container.encode(self.isGroupMember, forKey: .isGroupMember)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.legalCountryClass, forKey: .legalCountryClass)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
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
        case vatValid
        case vatValidatedAt
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
        case createdAt
        case updatedAt
    }
}
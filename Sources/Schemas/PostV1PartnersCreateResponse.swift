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
    public let notes: Nullable<String>
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
        notes: Nullable<String>,
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
        self.notes = notes
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
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
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
        try container.encode(self.notes, forKey: .notes)
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
        case notes
        case createdAt
        case updatedAt
    }
}
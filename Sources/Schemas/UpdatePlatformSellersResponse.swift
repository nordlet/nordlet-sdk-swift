import Foundation

public struct UpdatePlatformSellersResponse: Codable, Hashable, Sendable {
    public let id: String
    public let kind: UpdatePlatformSellersResponseKind
    public let name: String
    public let partnerId: Nullable<String>
    public let firstName: Nullable<String>
    public let middleName: Nullable<String>
    public let lastName: Nullable<String>
    public let entityName: Nullable<String>
    public let taxResidences: [UpdatePlatformSellersResponseTaxResidencesItem]
    public let vatCode: Nullable<String>
    public let businessRegistrationNumber: Nullable<String>
    public let address: UpdatePlatformSellersResponseAddress
    public let birthDate: Nullable<CalendarDate>
    public let birthCity: Nullable<String>
    public let birthCountryCode: Nullable<String>
    public let iban: Nullable<String>
    public let accountHolderName: Nullable<String>
    public let governmentEntity: Bool
    public let listedEntity: Bool
    public let permanentEstablishments: [String]
    public let createdAt: Date
    public let activities: [UpdatePlatformSellersResponseActivitiesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        kind: UpdatePlatformSellersResponseKind,
        name: String,
        partnerId: Nullable<String>,
        firstName: Nullable<String>,
        middleName: Nullable<String>,
        lastName: Nullable<String>,
        entityName: Nullable<String>,
        taxResidences: [UpdatePlatformSellersResponseTaxResidencesItem],
        vatCode: Nullable<String>,
        businessRegistrationNumber: Nullable<String>,
        address: UpdatePlatformSellersResponseAddress,
        birthDate: Nullable<CalendarDate>,
        birthCity: Nullable<String>,
        birthCountryCode: Nullable<String>,
        iban: Nullable<String>,
        accountHolderName: Nullable<String>,
        governmentEntity: Bool,
        listedEntity: Bool,
        permanentEstablishments: [String],
        createdAt: Date,
        activities: [UpdatePlatformSellersResponseActivitiesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.kind = kind
        self.name = name
        self.partnerId = partnerId
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.entityName = entityName
        self.taxResidences = taxResidences
        self.vatCode = vatCode
        self.businessRegistrationNumber = businessRegistrationNumber
        self.address = address
        self.birthDate = birthDate
        self.birthCity = birthCity
        self.birthCountryCode = birthCountryCode
        self.iban = iban
        self.accountHolderName = accountHolderName
        self.governmentEntity = governmentEntity
        self.listedEntity = listedEntity
        self.permanentEstablishments = permanentEstablishments
        self.createdAt = createdAt
        self.activities = activities
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.kind = try container.decode(UpdatePlatformSellersResponseKind.self, forKey: .kind)
        self.name = try container.decode(String.self, forKey: .name)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.firstName = try container.decode(Nullable<String>.self, forKey: .firstName)
        self.middleName = try container.decode(Nullable<String>.self, forKey: .middleName)
        self.lastName = try container.decode(Nullable<String>.self, forKey: .lastName)
        self.entityName = try container.decode(Nullable<String>.self, forKey: .entityName)
        self.taxResidences = try container.decode([UpdatePlatformSellersResponseTaxResidencesItem].self, forKey: .taxResidences)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.businessRegistrationNumber = try container.decode(Nullable<String>.self, forKey: .businessRegistrationNumber)
        self.address = try container.decode(UpdatePlatformSellersResponseAddress.self, forKey: .address)
        self.birthDate = try container.decode(Nullable<CalendarDate>.self, forKey: .birthDate)
        self.birthCity = try container.decode(Nullable<String>.self, forKey: .birthCity)
        self.birthCountryCode = try container.decode(Nullable<String>.self, forKey: .birthCountryCode)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.accountHolderName = try container.decode(Nullable<String>.self, forKey: .accountHolderName)
        self.governmentEntity = try container.decode(Bool.self, forKey: .governmentEntity)
        self.listedEntity = try container.decode(Bool.self, forKey: .listedEntity)
        self.permanentEstablishments = try container.decode([String].self, forKey: .permanentEstablishments)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.activities = try container.decode([UpdatePlatformSellersResponseActivitiesItem].self, forKey: .activities)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.middleName, forKey: .middleName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.entityName, forKey: .entityName)
        try container.encode(self.taxResidences, forKey: .taxResidences)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.businessRegistrationNumber, forKey: .businessRegistrationNumber)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.birthDate, forKey: .birthDate)
        try container.encode(self.birthCity, forKey: .birthCity)
        try container.encode(self.birthCountryCode, forKey: .birthCountryCode)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.accountHolderName, forKey: .accountHolderName)
        try container.encode(self.governmentEntity, forKey: .governmentEntity)
        try container.encode(self.listedEntity, forKey: .listedEntity)
        try container.encode(self.permanentEstablishments, forKey: .permanentEstablishments)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.activities, forKey: .activities)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case kind
        case name
        case partnerId
        case firstName
        case middleName
        case lastName
        case entityName
        case taxResidences
        case vatCode
        case businessRegistrationNumber
        case address
        case birthDate
        case birthCity
        case birthCountryCode
        case iban
        case accountHolderName
        case governmentEntity
        case listedEntity
        case permanentEstablishments
        case createdAt
        case activities
    }
}
import Foundation

extension Requests {
    public struct CreatePlatformSellersRequest: Codable, Hashable, Sendable {
        public let kind: CreatePlatformSellersRequestKind
        public let partnerId: Nullable<String>?
        public let firstName: Nullable<String>?
        public let middleName: Nullable<String>?
        public let lastName: Nullable<String>?
        public let entityName: Nullable<String>?
        public let taxResidences: [CreatePlatformSellersRequestTaxResidencesItem]?
        public let vatCode: Nullable<String>?
        public let businessRegistrationNumber: Nullable<String>?
        public let address: CreatePlatformSellersRequestAddress
        public let birthDate: Nullable<CalendarDate>?
        public let birthCity: Nullable<String>?
        public let birthCountryCode: Nullable<String>?
        public let iban: Nullable<String>?
        public let accountHolderName: Nullable<String>?
        public let governmentEntity: Bool?
        public let listedEntity: Bool?
        public let permanentEstablishments: [String]?
        public let activities: [CreatePlatformSellersRequestActivitiesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            kind: CreatePlatformSellersRequestKind,
            partnerId: Nullable<String>? = nil,
            firstName: Nullable<String>? = nil,
            middleName: Nullable<String>? = nil,
            lastName: Nullable<String>? = nil,
            entityName: Nullable<String>? = nil,
            taxResidences: [CreatePlatformSellersRequestTaxResidencesItem]? = nil,
            vatCode: Nullable<String>? = nil,
            businessRegistrationNumber: Nullable<String>? = nil,
            address: CreatePlatformSellersRequestAddress,
            birthDate: Nullable<CalendarDate>? = nil,
            birthCity: Nullable<String>? = nil,
            birthCountryCode: Nullable<String>? = nil,
            iban: Nullable<String>? = nil,
            accountHolderName: Nullable<String>? = nil,
            governmentEntity: Bool? = nil,
            listedEntity: Bool? = nil,
            permanentEstablishments: [String]? = nil,
            activities: [CreatePlatformSellersRequestActivitiesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.kind = kind
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
            self.activities = activities
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.kind = try container.decode(CreatePlatformSellersRequestKind.self, forKey: .kind)
            self.partnerId = try container.decodeNullableIfPresent(String.self, forKey: .partnerId)
            self.firstName = try container.decodeNullableIfPresent(String.self, forKey: .firstName)
            self.middleName = try container.decodeNullableIfPresent(String.self, forKey: .middleName)
            self.lastName = try container.decodeNullableIfPresent(String.self, forKey: .lastName)
            self.entityName = try container.decodeNullableIfPresent(String.self, forKey: .entityName)
            self.taxResidences = try container.decodeIfPresent([CreatePlatformSellersRequestTaxResidencesItem].self, forKey: .taxResidences)
            self.vatCode = try container.decodeNullableIfPresent(String.self, forKey: .vatCode)
            self.businessRegistrationNumber = try container.decodeNullableIfPresent(String.self, forKey: .businessRegistrationNumber)
            self.address = try container.decode(CreatePlatformSellersRequestAddress.self, forKey: .address)
            self.birthDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .birthDate)
            self.birthCity = try container.decodeNullableIfPresent(String.self, forKey: .birthCity)
            self.birthCountryCode = try container.decodeNullableIfPresent(String.self, forKey: .birthCountryCode)
            self.iban = try container.decodeNullableIfPresent(String.self, forKey: .iban)
            self.accountHolderName = try container.decodeNullableIfPresent(String.self, forKey: .accountHolderName)
            self.governmentEntity = try container.decodeIfPresent(Bool.self, forKey: .governmentEntity)
            self.listedEntity = try container.decodeIfPresent(Bool.self, forKey: .listedEntity)
            self.permanentEstablishments = try container.decodeIfPresent([String].self, forKey: .permanentEstablishments)
            self.activities = try container.decodeIfPresent([CreatePlatformSellersRequestActivitiesItem].self, forKey: .activities)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.kind, forKey: .kind)
            try container.encodeNullableIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeNullableIfPresent(self.firstName, forKey: .firstName)
            try container.encodeNullableIfPresent(self.middleName, forKey: .middleName)
            try container.encodeNullableIfPresent(self.lastName, forKey: .lastName)
            try container.encodeNullableIfPresent(self.entityName, forKey: .entityName)
            try container.encodeIfPresent(self.taxResidences, forKey: .taxResidences)
            try container.encodeNullableIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeNullableIfPresent(self.businessRegistrationNumber, forKey: .businessRegistrationNumber)
            try container.encode(self.address, forKey: .address)
            try container.encodeNullableIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeNullableIfPresent(self.birthCity, forKey: .birthCity)
            try container.encodeNullableIfPresent(self.birthCountryCode, forKey: .birthCountryCode)
            try container.encodeNullableIfPresent(self.iban, forKey: .iban)
            try container.encodeNullableIfPresent(self.accountHolderName, forKey: .accountHolderName)
            try container.encodeIfPresent(self.governmentEntity, forKey: .governmentEntity)
            try container.encodeIfPresent(self.listedEntity, forKey: .listedEntity)
            try container.encodeIfPresent(self.permanentEstablishments, forKey: .permanentEstablishments)
            try container.encodeIfPresent(self.activities, forKey: .activities)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case kind
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
            case activities
        }
    }
}
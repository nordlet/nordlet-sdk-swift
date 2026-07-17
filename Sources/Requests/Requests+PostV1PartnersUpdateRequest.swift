import Foundation

extension Requests {
    public struct PostV1PartnersUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let type: PostV1PartnersUpdateRequestType?
        public let name: String?
        public let code: String?
        public let vatCode: String?
        public let peppolId: String?
        public let email: String?
        public let phone: String?
        public let selfEmploymentCertNo: String?
        public let birthDate: String?
        public let isCustomer: Bool?
        public let isSupplier: Bool?
        public let paymentTermDays: Int64?
        public let creditLimit: String?
        public let priceListId: String?
        public let groupId: String?
        public let statusId: String?
        public let address: PostV1PartnersUpdateRequestAddress?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            type: PostV1PartnersUpdateRequestType? = nil,
            name: String? = nil,
            code: String? = nil,
            vatCode: String? = nil,
            peppolId: String? = nil,
            email: String? = nil,
            phone: String? = nil,
            selfEmploymentCertNo: String? = nil,
            birthDate: String? = nil,
            isCustomer: Bool? = nil,
            isSupplier: Bool? = nil,
            paymentTermDays: Int64? = nil,
            creditLimit: String? = nil,
            priceListId: String? = nil,
            groupId: String? = nil,
            statusId: String? = nil,
            address: PostV1PartnersUpdateRequestAddress? = nil,
            notes: String? = nil,
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
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.type = try container.decodeIfPresent(PostV1PartnersUpdateRequestType.self, forKey: .type)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
            self.peppolId = try container.decodeIfPresent(String.self, forKey: .peppolId)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.selfEmploymentCertNo = try container.decodeIfPresent(String.self, forKey: .selfEmploymentCertNo)
            self.birthDate = try container.decodeIfPresent(String.self, forKey: .birthDate)
            self.isCustomer = try container.decodeIfPresent(Bool.self, forKey: .isCustomer)
            self.isSupplier = try container.decodeIfPresent(Bool.self, forKey: .isSupplier)
            self.paymentTermDays = try container.decodeIfPresent(Int64.self, forKey: .paymentTermDays)
            self.creditLimit = try container.decodeIfPresent(String.self, forKey: .creditLimit)
            self.priceListId = try container.decodeIfPresent(String.self, forKey: .priceListId)
            self.groupId = try container.decodeIfPresent(String.self, forKey: .groupId)
            self.statusId = try container.decodeIfPresent(String.self, forKey: .statusId)
            self.address = try container.decodeIfPresent(PostV1PartnersUpdateRequestAddress.self, forKey: .address)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeIfPresent(self.peppolId, forKey: .peppolId)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.selfEmploymentCertNo, forKey: .selfEmploymentCertNo)
            try container.encodeIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeIfPresent(self.isCustomer, forKey: .isCustomer)
            try container.encodeIfPresent(self.isSupplier, forKey: .isSupplier)
            try container.encodeIfPresent(self.paymentTermDays, forKey: .paymentTermDays)
            try container.encodeIfPresent(self.creditLimit, forKey: .creditLimit)
            try container.encodeIfPresent(self.priceListId, forKey: .priceListId)
            try container.encodeIfPresent(self.groupId, forKey: .groupId)
            try container.encodeIfPresent(self.statusId, forKey: .statusId)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeIfPresent(self.notes, forKey: .notes)
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
            case notes
        }
    }
}
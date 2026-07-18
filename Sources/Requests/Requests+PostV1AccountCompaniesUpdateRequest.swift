import Foundation

extension Requests {
    public struct PostV1AccountCompaniesUpdateRequest: Codable, Hashable, Sendable {
        public let name: String?
        public let code: String?
        public let vatCode: String?
        public let smeExemptionNumber: String?
        public let isVatPayer: Bool?
        public let address: PostV1AccountCompaniesUpdateRequestAddress?
        public let email: String?
        public let phone: String?
        public let iban: String?
        public let bankName: String?
        public let peppolId: String?
        public let defaultInvoiceCurrency: String?
        public let logo: PostV1AccountCompaniesUpdateRequestLogo?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            code: String? = nil,
            vatCode: String? = nil,
            smeExemptionNumber: String? = nil,
            isVatPayer: Bool? = nil,
            address: PostV1AccountCompaniesUpdateRequestAddress? = nil,
            email: String? = nil,
            phone: String? = nil,
            iban: String? = nil,
            bankName: String? = nil,
            peppolId: String? = nil,
            defaultInvoiceCurrency: String? = nil,
            logo: PostV1AccountCompaniesUpdateRequestLogo? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.code = code
            self.vatCode = vatCode
            self.smeExemptionNumber = smeExemptionNumber
            self.isVatPayer = isVatPayer
            self.address = address
            self.email = email
            self.phone = phone
            self.iban = iban
            self.bankName = bankName
            self.peppolId = peppolId
            self.defaultInvoiceCurrency = defaultInvoiceCurrency
            self.logo = logo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
            self.smeExemptionNumber = try container.decodeIfPresent(String.self, forKey: .smeExemptionNumber)
            self.isVatPayer = try container.decodeIfPresent(Bool.self, forKey: .isVatPayer)
            self.address = try container.decodeIfPresent(PostV1AccountCompaniesUpdateRequestAddress.self, forKey: .address)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankName = try container.decodeIfPresent(String.self, forKey: .bankName)
            self.peppolId = try container.decodeIfPresent(String.self, forKey: .peppolId)
            self.defaultInvoiceCurrency = try container.decodeIfPresent(String.self, forKey: .defaultInvoiceCurrency)
            self.logo = try container.decodeIfPresent(PostV1AccountCompaniesUpdateRequestLogo.self, forKey: .logo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeIfPresent(self.smeExemptionNumber, forKey: .smeExemptionNumber)
            try container.encodeIfPresent(self.isVatPayer, forKey: .isVatPayer)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankName, forKey: .bankName)
            try container.encodeIfPresent(self.peppolId, forKey: .peppolId)
            try container.encodeIfPresent(self.defaultInvoiceCurrency, forKey: .defaultInvoiceCurrency)
            try container.encodeIfPresent(self.logo, forKey: .logo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case code
            case vatCode
            case smeExemptionNumber
            case isVatPayer
            case address
            case email
            case phone
            case iban
            case bankName
            case peppolId
            case defaultInvoiceCurrency
            case logo
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1AccountCompaniesCreateRequest: Codable, Hashable, Sendable {
        public let name: String
        public let code: String?
        public let vatCode: String?
        public let isVatPayer: Bool?
        public let address: PostV1AccountCompaniesCreateRequestAddress?
        public let email: String?
        public let phone: String?
        public let iban: String?
        public let bankName: String?
        public let peppolId: String?
        public let defaultInvoiceCurrency: String?
        /// Jurisdiction the company is registered in (immutable after creation)
        public let countryCode: PostV1AccountCompaniesCreateRequestCountryCode?
        /// Sandbox companies hold test data and are purged immediately on delete (immutable after creation)
        public let isSandbox: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            code: String? = nil,
            vatCode: String? = nil,
            isVatPayer: Bool? = nil,
            address: PostV1AccountCompaniesCreateRequestAddress? = nil,
            email: String? = nil,
            phone: String? = nil,
            iban: String? = nil,
            bankName: String? = nil,
            peppolId: String? = nil,
            defaultInvoiceCurrency: String? = nil,
            countryCode: PostV1AccountCompaniesCreateRequestCountryCode? = nil,
            isSandbox: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.code = code
            self.vatCode = vatCode
            self.isVatPayer = isVatPayer
            self.address = address
            self.email = email
            self.phone = phone
            self.iban = iban
            self.bankName = bankName
            self.peppolId = peppolId
            self.defaultInvoiceCurrency = defaultInvoiceCurrency
            self.countryCode = countryCode
            self.isSandbox = isSandbox
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
            self.isVatPayer = try container.decodeIfPresent(Bool.self, forKey: .isVatPayer)
            self.address = try container.decodeIfPresent(PostV1AccountCompaniesCreateRequestAddress.self, forKey: .address)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankName = try container.decodeIfPresent(String.self, forKey: .bankName)
            self.peppolId = try container.decodeIfPresent(String.self, forKey: .peppolId)
            self.defaultInvoiceCurrency = try container.decodeIfPresent(String.self, forKey: .defaultInvoiceCurrency)
            self.countryCode = try container.decodeIfPresent(PostV1AccountCompaniesCreateRequestCountryCode.self, forKey: .countryCode)
            self.isSandbox = try container.decodeIfPresent(Bool.self, forKey: .isSandbox)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeIfPresent(self.isVatPayer, forKey: .isVatPayer)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankName, forKey: .bankName)
            try container.encodeIfPresent(self.peppolId, forKey: .peppolId)
            try container.encodeIfPresent(self.defaultInvoiceCurrency, forKey: .defaultInvoiceCurrency)
            try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
            try container.encodeIfPresent(self.isSandbox, forKey: .isSandbox)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case code
            case vatCode
            case isVatPayer
            case address
            case email
            case phone
            case iban
            case bankName
            case peppolId
            case defaultInvoiceCurrency
            case countryCode
            case isSandbox
        }
    }
}
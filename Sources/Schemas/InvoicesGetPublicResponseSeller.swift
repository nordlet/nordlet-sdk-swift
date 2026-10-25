import Foundation

public struct InvoicesGetPublicResponseSeller: Codable, Hashable, Sendable {
    public let name: String
    public let vatCode: Nullable<String>
    public let countryCode: Nullable<String>
    public let address: InvoicesGetPublicResponseSellerAddress
    public let email: Nullable<String>
    public let iban: Nullable<String>
    public let bankName: Nullable<String>
    public let bankBic: Nullable<String>
    public let bankCode: Nullable<String>
    public let bankBranchCode: Nullable<String>
    public let bankAccountNumber: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        vatCode: Nullable<String>,
        countryCode: Nullable<String>,
        address: InvoicesGetPublicResponseSellerAddress,
        email: Nullable<String>,
        iban: Nullable<String>,
        bankName: Nullable<String>,
        bankBic: Nullable<String>,
        bankCode: Nullable<String>,
        bankBranchCode: Nullable<String>,
        bankAccountNumber: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.vatCode = vatCode
        self.countryCode = countryCode
        self.address = address
        self.email = email
        self.iban = iban
        self.bankName = bankName
        self.bankBic = bankBic
        self.bankCode = bankCode
        self.bankBranchCode = bankBranchCode
        self.bankAccountNumber = bankAccountNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.countryCode = try container.decode(Nullable<String>.self, forKey: .countryCode)
        self.address = try container.decode(InvoicesGetPublicResponseSellerAddress.self, forKey: .address)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.bankName = try container.decode(Nullable<String>.self, forKey: .bankName)
        self.bankBic = try container.decode(Nullable<String>.self, forKey: .bankBic)
        self.bankCode = try container.decode(Nullable<String>.self, forKey: .bankCode)
        self.bankBranchCode = try container.decode(Nullable<String>.self, forKey: .bankBranchCode)
        self.bankAccountNumber = try container.decode(Nullable<String>.self, forKey: .bankAccountNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.bankName, forKey: .bankName)
        try container.encode(self.bankBic, forKey: .bankBic)
        try container.encode(self.bankCode, forKey: .bankCode)
        try container.encode(self.bankBranchCode, forKey: .bankBranchCode)
        try container.encode(self.bankAccountNumber, forKey: .bankAccountNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case vatCode
        case countryCode
        case address
        case email
        case iban
        case bankName
        case bankBic
        case bankCode
        case bankBranchCode
        case bankAccountNumber
    }
}
import Foundation

public struct MeAccountResponseCompaniesItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let code: Nullable<String>
    public let vatCode: Nullable<String>
    public let role: String
    public let isSandbox: Bool
    public let cashBasis: Bool
    public let countryCode: String
    public let baseCurrency: String
    public let isVatPayer: Bool
    public let vatPeriod: Nullable<MeAccountResponseCompaniesItemVatPeriod>
    public let fiscalYearEndMonth: Nullable<Int64>
    public let status: MeAccountResponseCompaniesItemStatus
    public let deletedAt: Nullable<Date>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        code: Nullable<String>,
        vatCode: Nullable<String>,
        role: String,
        isSandbox: Bool,
        cashBasis: Bool,
        countryCode: String,
        baseCurrency: String,
        isVatPayer: Bool,
        vatPeriod: Nullable<MeAccountResponseCompaniesItemVatPeriod>,
        fiscalYearEndMonth: Nullable<Int64>,
        status: MeAccountResponseCompaniesItemStatus,
        deletedAt: Nullable<Date>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.code = code
        self.vatCode = vatCode
        self.role = role
        self.isSandbox = isSandbox
        self.cashBasis = cashBasis
        self.countryCode = countryCode
        self.baseCurrency = baseCurrency
        self.isVatPayer = isVatPayer
        self.vatPeriod = vatPeriod
        self.fiscalYearEndMonth = fiscalYearEndMonth
        self.status = status
        self.deletedAt = deletedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.role = try container.decode(String.self, forKey: .role)
        self.isSandbox = try container.decode(Bool.self, forKey: .isSandbox)
        self.cashBasis = try container.decode(Bool.self, forKey: .cashBasis)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.baseCurrency = try container.decode(String.self, forKey: .baseCurrency)
        self.isVatPayer = try container.decode(Bool.self, forKey: .isVatPayer)
        self.vatPeriod = try container.decode(Nullable<MeAccountResponseCompaniesItemVatPeriod>.self, forKey: .vatPeriod)
        self.fiscalYearEndMonth = try container.decode(Nullable<Int64>.self, forKey: .fiscalYearEndMonth)
        self.status = try container.decode(MeAccountResponseCompaniesItemStatus.self, forKey: .status)
        self.deletedAt = try container.decode(Nullable<Date>.self, forKey: .deletedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.isSandbox, forKey: .isSandbox)
        try container.encode(self.cashBasis, forKey: .cashBasis)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.baseCurrency, forKey: .baseCurrency)
        try container.encode(self.isVatPayer, forKey: .isVatPayer)
        try container.encode(self.vatPeriod, forKey: .vatPeriod)
        try container.encode(self.fiscalYearEndMonth, forKey: .fiscalYearEndMonth)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.deletedAt, forKey: .deletedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
        case vatCode
        case role
        case isSandbox
        case cashBasis
        case countryCode
        case baseCurrency
        case isVatPayer
        case vatPeriod
        case fiscalYearEndMonth
        case status
        case deletedAt
    }
}
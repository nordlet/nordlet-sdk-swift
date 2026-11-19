import Foundation

public struct CompaniesHouseGetPartnersResponse: Codable, Hashable, Sendable {
    public let companyNumber: String
    public let name: String
    public let status: Nullable<String>
    public let type: Nullable<String>
    public let jurisdiction: Nullable<String>
    public let incorporatedOn: Nullable<String>
    public let ceasedOn: Nullable<String>
    public let address: Nullable<CompaniesHouseGetPartnersResponseAddress>
    public let accountingReferenceDate: Nullable<CompaniesHouseGetPartnersResponseAccountingReferenceDate>
    public let nextAccountsDue: Nullable<String>
    public let nextConfirmationStatementDue: Nullable<String>
    public let sicCodes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyNumber: String,
        name: String,
        status: Nullable<String>,
        type: Nullable<String>,
        jurisdiction: Nullable<String>,
        incorporatedOn: Nullable<String>,
        ceasedOn: Nullable<String>,
        address: Nullable<CompaniesHouseGetPartnersResponseAddress>,
        accountingReferenceDate: Nullable<CompaniesHouseGetPartnersResponseAccountingReferenceDate>,
        nextAccountsDue: Nullable<String>,
        nextConfirmationStatementDue: Nullable<String>,
        sicCodes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyNumber = companyNumber
        self.name = name
        self.status = status
        self.type = type
        self.jurisdiction = jurisdiction
        self.incorporatedOn = incorporatedOn
        self.ceasedOn = ceasedOn
        self.address = address
        self.accountingReferenceDate = accountingReferenceDate
        self.nextAccountsDue = nextAccountsDue
        self.nextConfirmationStatementDue = nextConfirmationStatementDue
        self.sicCodes = sicCodes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyNumber = try container.decode(String.self, forKey: .companyNumber)
        self.name = try container.decode(String.self, forKey: .name)
        self.status = try container.decode(Nullable<String>.self, forKey: .status)
        self.type = try container.decode(Nullable<String>.self, forKey: .type)
        self.jurisdiction = try container.decode(Nullable<String>.self, forKey: .jurisdiction)
        self.incorporatedOn = try container.decode(Nullable<String>.self, forKey: .incorporatedOn)
        self.ceasedOn = try container.decode(Nullable<String>.self, forKey: .ceasedOn)
        self.address = try container.decode(Nullable<CompaniesHouseGetPartnersResponseAddress>.self, forKey: .address)
        self.accountingReferenceDate = try container.decode(Nullable<CompaniesHouseGetPartnersResponseAccountingReferenceDate>.self, forKey: .accountingReferenceDate)
        self.nextAccountsDue = try container.decode(Nullable<String>.self, forKey: .nextAccountsDue)
        self.nextConfirmationStatementDue = try container.decode(Nullable<String>.self, forKey: .nextConfirmationStatementDue)
        self.sicCodes = try container.decode([String].self, forKey: .sicCodes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.companyNumber, forKey: .companyNumber)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.jurisdiction, forKey: .jurisdiction)
        try container.encode(self.incorporatedOn, forKey: .incorporatedOn)
        try container.encode(self.ceasedOn, forKey: .ceasedOn)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.accountingReferenceDate, forKey: .accountingReferenceDate)
        try container.encode(self.nextAccountsDue, forKey: .nextAccountsDue)
        try container.encode(self.nextConfirmationStatementDue, forKey: .nextConfirmationStatementDue)
        try container.encode(self.sicCodes, forKey: .sicCodes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyNumber
        case name
        case status
        case type
        case jurisdiction
        case incorporatedOn
        case ceasedOn
        case address
        case accountingReferenceDate
        case nextAccountsDue
        case nextConfirmationStatementDue
        case sicCodes
    }
}
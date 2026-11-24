import Foundation

public struct AccountsCreateBankResponsePaymentFileSettings: Codable, Hashable, Sendable {
    /// Bacs: the service user number (SUN) of the company for this account
    public let serviceUserNumber: String?
    /// Bacs: the service user's short name; defaults to the company name
    public let serviceUserName: String?
    /// Nacha: the routing number of the bank that receives the file; defaults to the account's bankCode
    public let odfiRoutingNumber: String?
    /// Nacha: the Immediate Origin the bank gave the company
    public let immediateOrigin: String?
    /// Nacha: the name of the bank that receives the file
    public let immediateDestinationName: String?
    /// Nacha: the Company Identification the bank gave the company
    public let companyIdentification: String?
    /// Nacha: the company name shown to the receiver; defaults to the company name
    public let companyName: String?
    /// Nacha: the Company Discretionary Data the bank asks for
    public let companyDiscretionaryData: String?
    /// pain.001: the BIC of the bank that holds this account, written as the debtor agent; required for a SEK supplier file from a Swedish account
    public let bic: String?
    /// pain.001: the identifier the bank gave the company for file payments (at Swedbank the agreement ID), written as InitgPty/Id/OrgId/Othr with scheme BANK
    public let initiatingPartyBankId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        serviceUserNumber: String? = nil,
        serviceUserName: String? = nil,
        odfiRoutingNumber: String? = nil,
        immediateOrigin: String? = nil,
        immediateDestinationName: String? = nil,
        companyIdentification: String? = nil,
        companyName: String? = nil,
        companyDiscretionaryData: String? = nil,
        bic: String? = nil,
        initiatingPartyBankId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.serviceUserNumber = serviceUserNumber
        self.serviceUserName = serviceUserName
        self.odfiRoutingNumber = odfiRoutingNumber
        self.immediateOrigin = immediateOrigin
        self.immediateDestinationName = immediateDestinationName
        self.companyIdentification = companyIdentification
        self.companyName = companyName
        self.companyDiscretionaryData = companyDiscretionaryData
        self.bic = bic
        self.initiatingPartyBankId = initiatingPartyBankId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.serviceUserNumber = try container.decodeIfPresent(String.self, forKey: .serviceUserNumber)
        self.serviceUserName = try container.decodeIfPresent(String.self, forKey: .serviceUserName)
        self.odfiRoutingNumber = try container.decodeIfPresent(String.self, forKey: .odfiRoutingNumber)
        self.immediateOrigin = try container.decodeIfPresent(String.self, forKey: .immediateOrigin)
        self.immediateDestinationName = try container.decodeIfPresent(String.self, forKey: .immediateDestinationName)
        self.companyIdentification = try container.decodeIfPresent(String.self, forKey: .companyIdentification)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.companyDiscretionaryData = try container.decodeIfPresent(String.self, forKey: .companyDiscretionaryData)
        self.bic = try container.decodeIfPresent(String.self, forKey: .bic)
        self.initiatingPartyBankId = try container.decodeIfPresent(String.self, forKey: .initiatingPartyBankId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.serviceUserNumber, forKey: .serviceUserNumber)
        try container.encodeIfPresent(self.serviceUserName, forKey: .serviceUserName)
        try container.encodeIfPresent(self.odfiRoutingNumber, forKey: .odfiRoutingNumber)
        try container.encodeIfPresent(self.immediateOrigin, forKey: .immediateOrigin)
        try container.encodeIfPresent(self.immediateDestinationName, forKey: .immediateDestinationName)
        try container.encodeIfPresent(self.companyIdentification, forKey: .companyIdentification)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.companyDiscretionaryData, forKey: .companyDiscretionaryData)
        try container.encodeIfPresent(self.bic, forKey: .bic)
        try container.encodeIfPresent(self.initiatingPartyBankId, forKey: .initiatingPartyBankId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case serviceUserNumber
        case serviceUserName
        case odfiRoutingNumber
        case immediateOrigin
        case immediateDestinationName
        case companyIdentification
        case companyName
        case companyDiscretionaryData
        case bic
        case initiatingPartyBankId
    }
}
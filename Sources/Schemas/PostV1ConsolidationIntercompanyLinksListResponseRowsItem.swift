import Foundation

public struct PostV1ConsolidationIntercompanyLinksListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let companyId: String
    public let companyName: String
    public let partnerId: String
    public let partnerName: String
    public let counterpartyCompanyId: String
    public let counterpartyCompanyName: String
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        companyId: String,
        companyName: String,
        partnerId: String,
        partnerName: String,
        counterpartyCompanyId: String,
        counterpartyCompanyName: String,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.companyId = companyId
        self.companyName = companyName
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.counterpartyCompanyId = counterpartyCompanyId
        self.counterpartyCompanyName = counterpartyCompanyName
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.companyId = try container.decode(String.self, forKey: .companyId)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.counterpartyCompanyId = try container.decode(String.self, forKey: .counterpartyCompanyId)
        self.counterpartyCompanyName = try container.decode(String.self, forKey: .counterpartyCompanyName)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.counterpartyCompanyId, forKey: .counterpartyCompanyId)
        try container.encode(self.counterpartyCompanyName, forKey: .counterpartyCompanyName)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case companyId
        case companyName
        case partnerId
        case partnerName
        case counterpartyCompanyId
        case counterpartyCompanyName
        case createdAt
    }
}
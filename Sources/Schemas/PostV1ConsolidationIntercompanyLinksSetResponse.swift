import Foundation

public struct PostV1ConsolidationIntercompanyLinksSetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let groupId: String
    public let companyId: String
    public let partnerId: String
    public let counterpartyCompanyId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        groupId: String,
        companyId: String,
        partnerId: String,
        counterpartyCompanyId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.groupId = groupId
        self.companyId = companyId
        self.partnerId = partnerId
        self.counterpartyCompanyId = counterpartyCompanyId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.groupId = try container.decode(String.self, forKey: .groupId)
        self.companyId = try container.decode(String.self, forKey: .companyId)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.counterpartyCompanyId = try container.decode(String.self, forKey: .counterpartyCompanyId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.groupId, forKey: .groupId)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.counterpartyCompanyId, forKey: .counterpartyCompanyId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case groupId
        case companyId
        case partnerId
        case counterpartyCompanyId
    }
}
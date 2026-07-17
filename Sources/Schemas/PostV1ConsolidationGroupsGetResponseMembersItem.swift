import Foundation

public struct PostV1ConsolidationGroupsGetResponseMembersItem: Codable, Hashable, Sendable {
    public let memberCompanyId: String
    public let name: String
    public let baseCurrency: String
    public let ownershipPercent: String
    public let method: PostV1ConsolidationGroupsGetResponseMembersItemMethod
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        memberCompanyId: String,
        name: String,
        baseCurrency: String,
        ownershipPercent: String,
        method: PostV1ConsolidationGroupsGetResponseMembersItemMethod,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.memberCompanyId = memberCompanyId
        self.name = name
        self.baseCurrency = baseCurrency
        self.ownershipPercent = ownershipPercent
        self.method = method
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.memberCompanyId = try container.decode(String.self, forKey: .memberCompanyId)
        self.name = try container.decode(String.self, forKey: .name)
        self.baseCurrency = try container.decode(String.self, forKey: .baseCurrency)
        self.ownershipPercent = try container.decode(String.self, forKey: .ownershipPercent)
        self.method = try container.decode(PostV1ConsolidationGroupsGetResponseMembersItemMethod.self, forKey: .method)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.memberCompanyId, forKey: .memberCompanyId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.baseCurrency, forKey: .baseCurrency)
        try container.encode(self.ownershipPercent, forKey: .ownershipPercent)
        try container.encode(self.method, forKey: .method)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case memberCompanyId
        case name
        case baseCurrency
        case ownershipPercent
        case method
    }
}
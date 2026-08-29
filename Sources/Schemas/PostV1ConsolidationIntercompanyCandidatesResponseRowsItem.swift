import Foundation

public struct PostV1ConsolidationIntercompanyCandidatesResponseRowsItem: Codable, Hashable, Sendable {
    public let memberCompanyId: String
    public let memberName: String
    public let partnerId: String
    public let partnerName: String
    public let partnerCode: Nullable<String>
    public let matchesCompanyId: String
    public let matchesCompanyName: String
    public let matchedOn: PostV1ConsolidationIntercompanyCandidatesResponseRowsItemMatchedOn
    public let linkId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        memberCompanyId: String,
        memberName: String,
        partnerId: String,
        partnerName: String,
        partnerCode: Nullable<String>,
        matchesCompanyId: String,
        matchesCompanyName: String,
        matchedOn: PostV1ConsolidationIntercompanyCandidatesResponseRowsItemMatchedOn,
        linkId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.memberCompanyId = memberCompanyId
        self.memberName = memberName
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.partnerCode = partnerCode
        self.matchesCompanyId = matchesCompanyId
        self.matchesCompanyName = matchesCompanyName
        self.matchedOn = matchedOn
        self.linkId = linkId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.memberCompanyId = try container.decode(String.self, forKey: .memberCompanyId)
        self.memberName = try container.decode(String.self, forKey: .memberName)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.partnerCode = try container.decode(Nullable<String>.self, forKey: .partnerCode)
        self.matchesCompanyId = try container.decode(String.self, forKey: .matchesCompanyId)
        self.matchesCompanyName = try container.decode(String.self, forKey: .matchesCompanyName)
        self.matchedOn = try container.decode(PostV1ConsolidationIntercompanyCandidatesResponseRowsItemMatchedOn.self, forKey: .matchedOn)
        self.linkId = try container.decode(Nullable<String>.self, forKey: .linkId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.memberCompanyId, forKey: .memberCompanyId)
        try container.encode(self.memberName, forKey: .memberName)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.partnerCode, forKey: .partnerCode)
        try container.encode(self.matchesCompanyId, forKey: .matchesCompanyId)
        try container.encode(self.matchesCompanyName, forKey: .matchesCompanyName)
        try container.encode(self.matchedOn, forKey: .matchedOn)
        try container.encode(self.linkId, forKey: .linkId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case memberCompanyId
        case memberName
        case partnerId
        case partnerName
        case partnerCode
        case matchesCompanyId
        case matchesCompanyName
        case matchedOn
        case linkId
    }
}
import Foundation

public struct JournalTemplatesCreateLedgerRequestLinesItem: Codable, Hashable, Sendable {
    public let accountCode: String
    public let side: JournalTemplatesCreateLedgerRequestLinesItemSide
    public let description: String?
    public let costCenterId: String?
    public let projectId: String?
    public let partnerId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountCode: String,
        side: JournalTemplatesCreateLedgerRequestLinesItemSide,
        description: String? = nil,
        costCenterId: String? = nil,
        projectId: String? = nil,
        partnerId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountCode = accountCode
        self.side = side
        self.description = description
        self.costCenterId = costCenterId
        self.projectId = projectId
        self.partnerId = partnerId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.side = try container.decode(JournalTemplatesCreateLedgerRequestLinesItemSide.self, forKey: .side)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.costCenterId = try container.decodeIfPresent(String.self, forKey: .costCenterId)
        self.projectId = try container.decodeIfPresent(String.self, forKey: .projectId)
        self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.side, forKey: .side)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.costCenterId, forKey: .costCenterId)
        try container.encodeIfPresent(self.projectId, forKey: .projectId)
        try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountCode
        case side
        case description
        case costCenterId
        case projectId
        case partnerId
    }
}
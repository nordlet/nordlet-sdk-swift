import Foundation

public struct VatAccountsReportsResponseAccountsItem: Codable, Hashable, Sendable {
    public let accountCode: String
    public let rules: [VatAccountsReportsResponseAccountsItemRulesItem]
    public let side: VatAccountsReportsResponseAccountsItemSide
    public let posted: String
    public let expected: String
    public let difference: String
    public let settlements: String
    public let byDocumentType: [VatAccountsReportsResponseAccountsItemByDocumentTypeItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountCode: String,
        rules: [VatAccountsReportsResponseAccountsItemRulesItem],
        side: VatAccountsReportsResponseAccountsItemSide,
        posted: String,
        expected: String,
        difference: String,
        settlements: String,
        byDocumentType: [VatAccountsReportsResponseAccountsItemByDocumentTypeItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountCode = accountCode
        self.rules = rules
        self.side = side
        self.posted = posted
        self.expected = expected
        self.difference = difference
        self.settlements = settlements
        self.byDocumentType = byDocumentType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.rules = try container.decode([VatAccountsReportsResponseAccountsItemRulesItem].self, forKey: .rules)
        self.side = try container.decode(VatAccountsReportsResponseAccountsItemSide.self, forKey: .side)
        self.posted = try container.decode(String.self, forKey: .posted)
        self.expected = try container.decode(String.self, forKey: .expected)
        self.difference = try container.decode(String.self, forKey: .difference)
        self.settlements = try container.decode(String.self, forKey: .settlements)
        self.byDocumentType = try container.decode([VatAccountsReportsResponseAccountsItemByDocumentTypeItem].self, forKey: .byDocumentType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.rules, forKey: .rules)
        try container.encode(self.side, forKey: .side)
        try container.encode(self.posted, forKey: .posted)
        try container.encode(self.expected, forKey: .expected)
        try container.encode(self.difference, forKey: .difference)
        try container.encode(self.settlements, forKey: .settlements)
        try container.encode(self.byDocumentType, forKey: .byDocumentType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountCode
        case rules
        case side
        case posted
        case expected
        case difference
        case settlements
        case byDocumentType
    }
}
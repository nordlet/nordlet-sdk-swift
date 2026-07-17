import Foundation

public struct PostV1ReportsTrialBalanceResponseRowsItem: Codable, Hashable, Sendable {
    public let accountId: String
    public let code: String
    public let name: String
    public let type: PostV1ReportsTrialBalanceResponseRowsItemType
    public let opening: String
    public let debit: String
    public let credit: String
    public let closing: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountId: String,
        code: String,
        name: String,
        type: PostV1ReportsTrialBalanceResponseRowsItemType,
        opening: String,
        debit: String,
        credit: String,
        closing: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountId = accountId
        self.code = code
        self.name = name
        self.type = type
        self.opening = opening
        self.debit = debit
        self.credit = credit
        self.closing = closing
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountId = try container.decode(String.self, forKey: .accountId)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(PostV1ReportsTrialBalanceResponseRowsItemType.self, forKey: .type)
        self.opening = try container.decode(String.self, forKey: .opening)
        self.debit = try container.decode(String.self, forKey: .debit)
        self.credit = try container.decode(String.self, forKey: .credit)
        self.closing = try container.decode(String.self, forKey: .closing)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.opening, forKey: .opening)
        try container.encode(self.debit, forKey: .debit)
        try container.encode(self.credit, forKey: .credit)
        try container.encode(self.closing, forKey: .closing)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId
        case code
        case name
        case type
        case opening
        case debit
        case credit
        case closing
    }
}
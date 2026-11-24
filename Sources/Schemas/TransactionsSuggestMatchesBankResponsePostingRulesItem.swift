import Foundation

public struct TransactionsSuggestMatchesBankResponsePostingRulesItem: Codable, Hashable, Sendable {
    public let ruleId: String
    public let accountCode: String
    public let partnerId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ruleId: String,
        accountCode: String,
        partnerId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ruleId = ruleId
        self.accountCode = accountCode
        self.partnerId = partnerId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ruleId = try container.decode(String.self, forKey: .ruleId)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ruleId, forKey: .ruleId)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.partnerId, forKey: .partnerId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ruleId
        case accountCode
        case partnerId
    }
}
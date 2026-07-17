import Foundation

public struct PostV1LedgerPostingRulesUpdateRequestRulesItem: Codable, Hashable, Sendable {
    public let key: PostV1LedgerPostingRulesUpdateRequestRulesItemKey
    public let accountCode: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: PostV1LedgerPostingRulesUpdateRequestRulesItemKey,
        accountCode: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.accountCode = accountCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(PostV1LedgerPostingRulesUpdateRequestRulesItemKey.self, forKey: .key)
        self.accountCode = try container.decode(Nullable<String>.self, forKey: .accountCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.accountCode, forKey: .accountCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case accountCode
    }
}
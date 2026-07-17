import Foundation

public struct PostV1LedgerPostingRulesListResponseRowsItem: Codable, Hashable, Sendable {
    public let key: String
    public let description: String
    public let defaultCode: String
    public let accountCode: String
    public let overridden: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: String,
        description: String,
        defaultCode: String,
        accountCode: String,
        overridden: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.description = description
        self.defaultCode = defaultCode
        self.accountCode = accountCode
        self.overridden = overridden
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(String.self, forKey: .key)
        self.description = try container.decode(String.self, forKey: .description)
        self.defaultCode = try container.decode(String.self, forKey: .defaultCode)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.overridden = try container.decode(Bool.self, forKey: .overridden)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.defaultCode, forKey: .defaultCode)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.overridden, forKey: .overridden)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case description
        case defaultCode
        case accountCode
        case overridden
    }
}
import Foundation

public struct StatementRowsListLedgerResponseAccountsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let type: String
    public let rowCode: Nullable<String>
    public let source: Nullable<StatementRowsListLedgerResponseAccountsItemSource>
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        type: String,
        rowCode: Nullable<String>,
        source: Nullable<StatementRowsListLedgerResponseAccountsItemSource>,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.type = type
        self.rowCode = rowCode
        self.source = source
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(String.self, forKey: .type)
        self.rowCode = try container.decode(Nullable<String>.self, forKey: .rowCode)
        self.source = try container.decode(Nullable<StatementRowsListLedgerResponseAccountsItemSource>.self, forKey: .source)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.rowCode, forKey: .rowCode)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case type
        case rowCode
        case source
        case amount
    }
}
import Foundation

public struct PostV1LedgerStatementRowsListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let label: String
    public let statement: PostV1LedgerStatementRowsListResponseRowsItemStatement
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        label: String,
        statement: PostV1LedgerStatementRowsListResponseRowsItemStatement,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.label = label
        self.statement = statement
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.label = try container.decode(String.self, forKey: .label)
        self.statement = try container.decode(PostV1LedgerStatementRowsListResponseRowsItemStatement.self, forKey: .statement)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.statement, forKey: .statement)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case label
        case statement
        case amount
    }
}
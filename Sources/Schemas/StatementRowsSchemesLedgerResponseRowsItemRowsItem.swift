import Foundation

public struct StatementRowsSchemesLedgerResponseRowsItemRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let label: String
    public let statement: StatementRowsSchemesLedgerResponseRowsItemRowsItemStatement
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        label: String,
        statement: StatementRowsSchemesLedgerResponseRowsItemRowsItemStatement,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.label = label
        self.statement = statement
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.label = try container.decode(String.self, forKey: .label)
        self.statement = try container.decode(StatementRowsSchemesLedgerResponseRowsItemRowsItemStatement.self, forKey: .statement)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.statement, forKey: .statement)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case label
        case statement
    }
}
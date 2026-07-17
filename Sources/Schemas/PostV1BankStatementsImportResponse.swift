import Foundation

public struct PostV1BankStatementsImportResponse: Codable, Hashable, Sendable {
    public let imported: Int64
    public let skipped: Int64
    public let statements: [PostV1BankStatementsImportResponseStatementsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        imported: Int64,
        skipped: Int64,
        statements: [PostV1BankStatementsImportResponseStatementsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.imported = imported
        self.skipped = skipped
        self.statements = statements
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.statements = try container.decode([PostV1BankStatementsImportResponseStatementsItem].self, forKey: .statements)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.imported, forKey: .imported)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.statements, forKey: .statements)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case imported
        case skipped
        case statements
    }
}
import Foundation

public struct PlJpkKrGenerateDeclarationsResponseCounts: Codable, Hashable, Sendable {
    public let accounts: Int64
    public let journalRows: Int64
    public let entryRows: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accounts: Int64,
        journalRows: Int64,
        entryRows: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accounts = accounts
        self.journalRows = journalRows
        self.entryRows = entryRows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accounts = try container.decode(Int64.self, forKey: .accounts)
        self.journalRows = try container.decode(Int64.self, forKey: .journalRows)
        self.entryRows = try container.decode(Int64.self, forKey: .entryRows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.journalRows, forKey: .journalRows)
        try container.encode(self.entryRows, forKey: .entryRows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case journalRows
        case entryRows
    }
}
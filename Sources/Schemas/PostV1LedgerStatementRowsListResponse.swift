import Foundation

public struct PostV1LedgerStatementRowsListResponse: Codable, Hashable, Sendable {
    public let scheme: PostV1LedgerStatementRowsListResponseScheme
    public let fromDate: String
    public let toDate: String
    public let accounts: [PostV1LedgerStatementRowsListResponseAccountsItem]
    public let rows: [PostV1LedgerStatementRowsListResponseRowsItem]
    public let unmapped: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheme: PostV1LedgerStatementRowsListResponseScheme,
        fromDate: String,
        toDate: String,
        accounts: [PostV1LedgerStatementRowsListResponseAccountsItem],
        rows: [PostV1LedgerStatementRowsListResponseRowsItem],
        unmapped: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheme = scheme
        self.fromDate = fromDate
        self.toDate = toDate
        self.accounts = accounts
        self.rows = rows
        self.unmapped = unmapped
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheme = try container.decode(PostV1LedgerStatementRowsListResponseScheme.self, forKey: .scheme)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.accounts = try container.decode([PostV1LedgerStatementRowsListResponseAccountsItem].self, forKey: .accounts)
        self.rows = try container.decode([PostV1LedgerStatementRowsListResponseRowsItem].self, forKey: .rows)
        self.unmapped = try container.decode([String].self, forKey: .unmapped)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.unmapped, forKey: .unmapped)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheme
        case fromDate
        case toDate
        case accounts
        case rows
        case unmapped
    }
}
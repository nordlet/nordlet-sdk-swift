import Foundation

public struct StatementRowsListLedgerResponse: Codable, Hashable, Sendable {
    public let scheme: StatementRowsListLedgerResponseScheme
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let accounts: [StatementRowsListLedgerResponseAccountsItem]
    public let rows: [StatementRowsListLedgerResponseRowsItem]
    public let unmapped: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheme: StatementRowsListLedgerResponseScheme,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        accounts: [StatementRowsListLedgerResponseAccountsItem],
        rows: [StatementRowsListLedgerResponseRowsItem],
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
        self.scheme = try container.decode(StatementRowsListLedgerResponseScheme.self, forKey: .scheme)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.accounts = try container.decode([StatementRowsListLedgerResponseAccountsItem].self, forKey: .accounts)
        self.rows = try container.decode([StatementRowsListLedgerResponseRowsItem].self, forKey: .rows)
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
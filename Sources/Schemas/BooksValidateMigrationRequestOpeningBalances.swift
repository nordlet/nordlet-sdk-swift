import Foundation

public struct BooksValidateMigrationRequestOpeningBalances: Codable, Hashable, Sendable {
    public let date: CalendarDate?
    public let balancingAccountCode: String?
    public let entries: [BooksValidateMigrationRequestOpeningBalancesEntriesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: CalendarDate? = nil,
        balancingAccountCode: String? = nil,
        entries: [BooksValidateMigrationRequestOpeningBalancesEntriesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.balancingAccountCode = balancingAccountCode
        self.entries = entries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(CalendarDate.self, forKey: .date)
        self.balancingAccountCode = try container.decodeIfPresent(String.self, forKey: .balancingAccountCode)
        self.entries = try container.decode([BooksValidateMigrationRequestOpeningBalancesEntriesItem].self, forKey: .entries)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.balancingAccountCode, forKey: .balancingAccountCode)
        try container.encode(self.entries, forKey: .entries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case balancingAccountCode
        case entries
    }
}
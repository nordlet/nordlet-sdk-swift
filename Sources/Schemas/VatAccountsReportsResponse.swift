import Foundation

public struct VatAccountsReportsResponse: Codable, Hashable, Sendable {
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let accounts: [VatAccountsReportsResponseAccountsItem]
    public let documents: VatAccountsReportsResponseDocuments
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: CalendarDate,
        toDate: CalendarDate,
        accounts: [VatAccountsReportsResponseAccountsItem],
        documents: VatAccountsReportsResponseDocuments,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.accounts = accounts
        self.documents = documents
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.accounts = try container.decode([VatAccountsReportsResponseAccountsItem].self, forKey: .accounts)
        self.documents = try container.decode(VatAccountsReportsResponseDocuments.self, forKey: .documents)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.documents, forKey: .documents)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case accounts
        case documents
        case warnings
    }
}
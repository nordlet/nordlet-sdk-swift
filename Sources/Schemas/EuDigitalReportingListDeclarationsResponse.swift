import Foundation

public struct EuDigitalReportingListDeclarationsResponse: Codable, Hashable, Sendable {
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let appliesFrom: String
    public let reportTo: String
    public let transactions: [EuDigitalReportingListDeclarationsResponseTransactionsItem]
    public let warnings: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: CalendarDate,
        toDate: CalendarDate,
        appliesFrom: String,
        reportTo: String,
        transactions: [EuDigitalReportingListDeclarationsResponseTransactionsItem],
        warnings: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.appliesFrom = appliesFrom
        self.reportTo = reportTo
        self.transactions = transactions
        self.warnings = warnings
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.appliesFrom = try container.decode(String.self, forKey: .appliesFrom)
        self.reportTo = try container.decode(String.self, forKey: .reportTo)
        self.transactions = try container.decode([EuDigitalReportingListDeclarationsResponseTransactionsItem].self, forKey: .transactions)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.appliesFrom, forKey: .appliesFrom)
        try container.encode(self.reportTo, forKey: .reportTo)
        try container.encode(self.transactions, forKey: .transactions)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case appliesFrom
        case reportTo
        case transactions
        case warnings
        case source
    }
}
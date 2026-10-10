import Foundation

public struct EuOwnGoodsTransfersComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let periodYear: Int64
    public let periodMonth: Int64
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let dueDate: CalendarDate
    public let memberStateOfIdentification: String
    public let currency: String
    public let rows: [EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem]
    public let total: String
    public let transfers: [EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem]
    public let warnings: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodYear: Int64,
        periodMonth: Int64,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        dueDate: CalendarDate,
        memberStateOfIdentification: String,
        currency: String,
        rows: [EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem],
        total: String,
        transfers: [EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem],
        warnings: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodYear = periodYear
        self.periodMonth = periodMonth
        self.fromDate = fromDate
        self.toDate = toDate
        self.dueDate = dueDate
        self.memberStateOfIdentification = memberStateOfIdentification
        self.currency = currency
        self.rows = rows
        self.total = total
        self.transfers = transfers
        self.warnings = warnings
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodYear = try container.decode(Int64.self, forKey: .periodYear)
        self.periodMonth = try container.decode(Int64.self, forKey: .periodMonth)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.memberStateOfIdentification = try container.decode(String.self, forKey: .memberStateOfIdentification)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.rows = try container.decode([EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem].self, forKey: .rows)
        self.total = try container.decode(String.self, forKey: .total)
        self.transfers = try container.decode([EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem].self, forKey: .transfers)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodYear, forKey: .periodYear)
        try container.encode(self.periodMonth, forKey: .periodMonth)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.memberStateOfIdentification, forKey: .memberStateOfIdentification)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.transfers, forKey: .transfers)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodYear
        case periodMonth
        case fromDate
        case toDate
        case dueDate
        case memberStateOfIdentification
        case currency
        case rows
        case total
        case transfers
        case warnings
        case source
    }
}
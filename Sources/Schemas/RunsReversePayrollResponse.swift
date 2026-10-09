import Foundation

public struct RunsReversePayrollResponse: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let month: Int64
    public let countryCode: String
    public let payDate: Nullable<CalendarDate>
    public let status: RunsReversePayrollResponseStatus
    public let grossTotal: String
    public let taxAllowanceTotal: String
    public let incomeTaxTotal: String
    public let employeeContributionsTotal: String
    public let employerContributionsTotal: String
    public let componentTotals: [RunsReversePayrollResponseComponentTotalsItem]
    public let netTotal: String
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let warnings: [String]
    public let createdAt: Date
    public let approvedAt: Nullable<Date>
    public let reversedAt: Nullable<Date>
    public let reversalJournalTransactionId: Nullable<String>
    public let reversalReason: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        month: Int64,
        countryCode: String,
        payDate: Nullable<CalendarDate>,
        status: RunsReversePayrollResponseStatus,
        grossTotal: String,
        taxAllowanceTotal: String,
        incomeTaxTotal: String,
        employeeContributionsTotal: String,
        employerContributionsTotal: String,
        componentTotals: [RunsReversePayrollResponseComponentTotalsItem],
        netTotal: String,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        warnings: [String],
        createdAt: Date,
        approvedAt: Nullable<Date>,
        reversedAt: Nullable<Date>,
        reversalJournalTransactionId: Nullable<String>,
        reversalReason: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.month = month
        self.countryCode = countryCode
        self.payDate = payDate
        self.status = status
        self.grossTotal = grossTotal
        self.taxAllowanceTotal = taxAllowanceTotal
        self.incomeTaxTotal = incomeTaxTotal
        self.employeeContributionsTotal = employeeContributionsTotal
        self.employerContributionsTotal = employerContributionsTotal
        self.componentTotals = componentTotals
        self.netTotal = netTotal
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.warnings = warnings
        self.createdAt = createdAt
        self.approvedAt = approvedAt
        self.reversedAt = reversedAt
        self.reversalJournalTransactionId = reversalJournalTransactionId
        self.reversalReason = reversalReason
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.payDate = try container.decode(Nullable<CalendarDate>.self, forKey: .payDate)
        self.status = try container.decode(RunsReversePayrollResponseStatus.self, forKey: .status)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.taxAllowanceTotal = try container.decode(String.self, forKey: .taxAllowanceTotal)
        self.incomeTaxTotal = try container.decode(String.self, forKey: .incomeTaxTotal)
        self.employeeContributionsTotal = try container.decode(String.self, forKey: .employeeContributionsTotal)
        self.employerContributionsTotal = try container.decode(String.self, forKey: .employerContributionsTotal)
        self.componentTotals = try container.decode([RunsReversePayrollResponseComponentTotalsItem].self, forKey: .componentTotals)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.approvedAt = try container.decode(Nullable<Date>.self, forKey: .approvedAt)
        self.reversedAt = try container.decode(Nullable<Date>.self, forKey: .reversedAt)
        self.reversalJournalTransactionId = try container.decode(Nullable<String>.self, forKey: .reversalJournalTransactionId)
        self.reversalReason = try container.decode(Nullable<String>.self, forKey: .reversalReason)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.payDate, forKey: .payDate)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.taxAllowanceTotal, forKey: .taxAllowanceTotal)
        try container.encode(self.incomeTaxTotal, forKey: .incomeTaxTotal)
        try container.encode(self.employeeContributionsTotal, forKey: .employeeContributionsTotal)
        try container.encode(self.employerContributionsTotal, forKey: .employerContributionsTotal)
        try container.encode(self.componentTotals, forKey: .componentTotals)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.approvedAt, forKey: .approvedAt)
        try container.encode(self.reversedAt, forKey: .reversedAt)
        try container.encode(self.reversalJournalTransactionId, forKey: .reversalJournalTransactionId)
        try container.encode(self.reversalReason, forKey: .reversalReason)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case month
        case countryCode
        case payDate
        case status
        case grossTotal
        case taxAllowanceTotal
        case incomeTaxTotal
        case employeeContributionsTotal
        case employerContributionsTotal
        case componentTotals
        case netTotal
        case journalTransactionId
        case notes
        case warnings
        case createdAt
        case approvedAt
        case reversedAt
        case reversalJournalTransactionId
        case reversalReason
    }
}
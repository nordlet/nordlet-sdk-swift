import Foundation

public struct PostV1PayrollRunsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let month: Int64
    public let countryCode: String
    public let status: PostV1PayrollRunsListResponseRowsItemStatus
    public let grossTotal: String
    public let taxAllowanceTotal: String
    public let incomeTaxTotal: String
    public let employeeContributionsTotal: String
    public let employerContributionsTotal: String
    public let componentTotals: [PostV1PayrollRunsListResponseRowsItemComponentTotalsItem]
    public let netTotal: String
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let approvedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        month: Int64,
        countryCode: String,
        status: PostV1PayrollRunsListResponseRowsItemStatus,
        grossTotal: String,
        taxAllowanceTotal: String,
        incomeTaxTotal: String,
        employeeContributionsTotal: String,
        employerContributionsTotal: String,
        componentTotals: [PostV1PayrollRunsListResponseRowsItemComponentTotalsItem],
        netTotal: String,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        approvedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.month = month
        self.countryCode = countryCode
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
        self.createdAt = createdAt
        self.approvedAt = approvedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.status = try container.decode(PostV1PayrollRunsListResponseRowsItemStatus.self, forKey: .status)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.taxAllowanceTotal = try container.decode(String.self, forKey: .taxAllowanceTotal)
        self.incomeTaxTotal = try container.decode(String.self, forKey: .incomeTaxTotal)
        self.employeeContributionsTotal = try container.decode(String.self, forKey: .employeeContributionsTotal)
        self.employerContributionsTotal = try container.decode(String.self, forKey: .employerContributionsTotal)
        self.componentTotals = try container.decode([PostV1PayrollRunsListResponseRowsItemComponentTotalsItem].self, forKey: .componentTotals)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.approvedAt = try container.decode(Nullable<String>.self, forKey: .approvedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.countryCode, forKey: .countryCode)
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
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.approvedAt, forKey: .approvedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case month
        case countryCode
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
        case createdAt
        case approvedAt
    }
}
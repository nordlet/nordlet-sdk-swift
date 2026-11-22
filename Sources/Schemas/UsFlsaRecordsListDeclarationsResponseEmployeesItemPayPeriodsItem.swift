import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItem: Codable, Hashable, Sendable {
    public let runId: String
    public let periodStart: String
    public let periodEnd: String
    public let payDate: CalendarDate
    public let basisOfPay: Nullable<UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemBasisOfPay>
    public let hoursWorked: Nullable<String>
    public let regularPay: String
    public let overtimePay: String
    public let overtimeHours: String
    public let straightTimeEarnings: Nullable<String>
    public let overtimePremium: Nullable<String>
    public let additions: [UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemAdditionsItem]
    public let deductions: [UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemDeductionsItem]
    public let totalWages: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        runId: String,
        periodStart: String,
        periodEnd: String,
        payDate: CalendarDate,
        basisOfPay: Nullable<UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemBasisOfPay>,
        hoursWorked: Nullable<String>,
        regularPay: String,
        overtimePay: String,
        overtimeHours: String,
        straightTimeEarnings: Nullable<String>,
        overtimePremium: Nullable<String>,
        additions: [UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemAdditionsItem],
        deductions: [UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemDeductionsItem],
        totalWages: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.runId = runId
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.payDate = payDate
        self.basisOfPay = basisOfPay
        self.hoursWorked = hoursWorked
        self.regularPay = regularPay
        self.overtimePay = overtimePay
        self.overtimeHours = overtimeHours
        self.straightTimeEarnings = straightTimeEarnings
        self.overtimePremium = overtimePremium
        self.additions = additions
        self.deductions = deductions
        self.totalWages = totalWages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.payDate = try container.decode(CalendarDate.self, forKey: .payDate)
        self.basisOfPay = try container.decode(Nullable<UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemBasisOfPay>.self, forKey: .basisOfPay)
        self.hoursWorked = try container.decode(Nullable<String>.self, forKey: .hoursWorked)
        self.regularPay = try container.decode(String.self, forKey: .regularPay)
        self.overtimePay = try container.decode(String.self, forKey: .overtimePay)
        self.overtimeHours = try container.decode(String.self, forKey: .overtimeHours)
        self.straightTimeEarnings = try container.decode(Nullable<String>.self, forKey: .straightTimeEarnings)
        self.overtimePremium = try container.decode(Nullable<String>.self, forKey: .overtimePremium)
        self.additions = try container.decode([UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemAdditionsItem].self, forKey: .additions)
        self.deductions = try container.decode([UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemDeductionsItem].self, forKey: .deductions)
        self.totalWages = try container.decode(String.self, forKey: .totalWages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.payDate, forKey: .payDate)
        try container.encode(self.basisOfPay, forKey: .basisOfPay)
        try container.encode(self.hoursWorked, forKey: .hoursWorked)
        try container.encode(self.regularPay, forKey: .regularPay)
        try container.encode(self.overtimePay, forKey: .overtimePay)
        try container.encode(self.overtimeHours, forKey: .overtimeHours)
        try container.encode(self.straightTimeEarnings, forKey: .straightTimeEarnings)
        try container.encode(self.overtimePremium, forKey: .overtimePremium)
        try container.encode(self.additions, forKey: .additions)
        try container.encode(self.deductions, forKey: .deductions)
        try container.encode(self.totalWages, forKey: .totalWages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case runId
        case periodStart
        case periodEnd
        case payDate
        case basisOfPay
        case hoursWorked
        case regularPay
        case overtimePay
        case overtimeHours
        case straightTimeEarnings
        case overtimePremium
        case additions
        case deductions
        case totalWages
    }
}
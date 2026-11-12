import Foundation

public struct ReconciliationGetBankResponse: Codable, Hashable, Sendable {
    public let bankAccountId: String
    public let accountCode: String
    public let currency: String
    public let date: CalendarDate
    public let statementBalance: Nullable<String>
    public let statementBalanceSource: Nullable<ReconciliationGetBankResponseStatementBalanceSource>
    public let statementClosingDate: Nullable<CalendarDate>
    public let ledgerBalance: String
    public let difference: Nullable<String>
    public let unbookedCount: Int64
    public let unbookedTotal: String
    public let unbookedLines: [ReconciliationGetBankResponseUnbookedLinesItem]
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bankAccountId: String,
        accountCode: String,
        currency: String,
        date: CalendarDate,
        statementBalance: Nullable<String>,
        statementBalanceSource: Nullable<ReconciliationGetBankResponseStatementBalanceSource>,
        statementClosingDate: Nullable<CalendarDate>,
        ledgerBalance: String,
        difference: Nullable<String>,
        unbookedCount: Int64,
        unbookedTotal: String,
        unbookedLines: [ReconciliationGetBankResponseUnbookedLinesItem],
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bankAccountId = bankAccountId
        self.accountCode = accountCode
        self.currency = currency
        self.date = date
        self.statementBalance = statementBalance
        self.statementBalanceSource = statementBalanceSource
        self.statementClosingDate = statementClosingDate
        self.ledgerBalance = ledgerBalance
        self.difference = difference
        self.unbookedCount = unbookedCount
        self.unbookedTotal = unbookedTotal
        self.unbookedLines = unbookedLines
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.statementBalance = try container.decode(Nullable<String>.self, forKey: .statementBalance)
        self.statementBalanceSource = try container.decode(Nullable<ReconciliationGetBankResponseStatementBalanceSource>.self, forKey: .statementBalanceSource)
        self.statementClosingDate = try container.decode(Nullable<CalendarDate>.self, forKey: .statementClosingDate)
        self.ledgerBalance = try container.decode(String.self, forKey: .ledgerBalance)
        self.difference = try container.decode(Nullable<String>.self, forKey: .difference)
        self.unbookedCount = try container.decode(Int64.self, forKey: .unbookedCount)
        self.unbookedTotal = try container.decode(String.self, forKey: .unbookedTotal)
        self.unbookedLines = try container.decode([ReconciliationGetBankResponseUnbookedLinesItem].self, forKey: .unbookedLines)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.statementBalance, forKey: .statementBalance)
        try container.encode(self.statementBalanceSource, forKey: .statementBalanceSource)
        try container.encode(self.statementClosingDate, forKey: .statementClosingDate)
        try container.encode(self.ledgerBalance, forKey: .ledgerBalance)
        try container.encode(self.difference, forKey: .difference)
        try container.encode(self.unbookedCount, forKey: .unbookedCount)
        try container.encode(self.unbookedTotal, forKey: .unbookedTotal)
        try container.encode(self.unbookedLines, forKey: .unbookedLines)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bankAccountId
        case accountCode
        case currency
        case date
        case statementBalance
        case statementBalanceSource
        case statementClosingDate
        case ledgerBalance
        case difference
        case unbookedCount
        case unbookedTotal
        case unbookedLines
        case warnings
    }
}
import Foundation

public struct PostV1BankStatementsImportResponseStatementsItem: Codable, Hashable, Sendable {
    public let statementId: Nullable<String>
    public let iban: Nullable<String>
    public let fromDate: Nullable<String>
    public let toDate: Nullable<String>
    public let openingBalance: Nullable<String>
    public let closingBalance: Nullable<String>
    public let transactionCount: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        statementId: Nullable<String>,
        iban: Nullable<String>,
        fromDate: Nullable<String>,
        toDate: Nullable<String>,
        openingBalance: Nullable<String>,
        closingBalance: Nullable<String>,
        transactionCount: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.statementId = statementId
        self.iban = iban
        self.fromDate = fromDate
        self.toDate = toDate
        self.openingBalance = openingBalance
        self.closingBalance = closingBalance
        self.transactionCount = transactionCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statementId = try container.decode(Nullable<String>.self, forKey: .statementId)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.fromDate = try container.decode(Nullable<String>.self, forKey: .fromDate)
        self.toDate = try container.decode(Nullable<String>.self, forKey: .toDate)
        self.openingBalance = try container.decode(Nullable<String>.self, forKey: .openingBalance)
        self.closingBalance = try container.decode(Nullable<String>.self, forKey: .closingBalance)
        self.transactionCount = try container.decode(Int64.self, forKey: .transactionCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.statementId, forKey: .statementId)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.openingBalance, forKey: .openingBalance)
        try container.encode(self.closingBalance, forKey: .closingBalance)
        try container.encode(self.transactionCount, forKey: .transactionCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case statementId
        case iban
        case fromDate
        case toDate
        case openingBalance
        case closingBalance
        case transactionCount
    }
}
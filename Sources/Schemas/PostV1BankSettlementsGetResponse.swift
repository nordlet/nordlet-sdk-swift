import Foundation

public struct PostV1BankSettlementsGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let bankAccountId: String
    public let provider: String
    public let payoutId: String
    public let payoutDate: Nullable<String>
    public let currency: String
    public let grossTotal: String
    public let feeTotal: String
    public let netTotal: String
    public let status: PostV1BankSettlementsGetResponseStatus
    public let journalTransactionId: Nullable<String>
    public let lineCount: Int64
    public let matchedCount: Int64
    public let unmatchedCount: Int64
    public let createdAt: String
    public let updatedAt: String
    public let lines: [PostV1BankSettlementsGetResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        bankAccountId: String,
        provider: String,
        payoutId: String,
        payoutDate: Nullable<String>,
        currency: String,
        grossTotal: String,
        feeTotal: String,
        netTotal: String,
        status: PostV1BankSettlementsGetResponseStatus,
        journalTransactionId: Nullable<String>,
        lineCount: Int64,
        matchedCount: Int64,
        unmatchedCount: Int64,
        createdAt: String,
        updatedAt: String,
        lines: [PostV1BankSettlementsGetResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.bankAccountId = bankAccountId
        self.provider = provider
        self.payoutId = payoutId
        self.payoutDate = payoutDate
        self.currency = currency
        self.grossTotal = grossTotal
        self.feeTotal = feeTotal
        self.netTotal = netTotal
        self.status = status
        self.journalTransactionId = journalTransactionId
        self.lineCount = lineCount
        self.matchedCount = matchedCount
        self.unmatchedCount = unmatchedCount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
        self.provider = try container.decode(String.self, forKey: .provider)
        self.payoutId = try container.decode(String.self, forKey: .payoutId)
        self.payoutDate = try container.decode(Nullable<String>.self, forKey: .payoutDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.feeTotal = try container.decode(String.self, forKey: .feeTotal)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.status = try container.decode(PostV1BankSettlementsGetResponseStatus.self, forKey: .status)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.lineCount = try container.decode(Int64.self, forKey: .lineCount)
        self.matchedCount = try container.decode(Int64.self, forKey: .matchedCount)
        self.unmatchedCount = try container.decode(Int64.self, forKey: .unmatchedCount)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.lines = try container.decode([PostV1BankSettlementsGetResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.provider, forKey: .provider)
        try container.encode(self.payoutId, forKey: .payoutId)
        try container.encode(self.payoutDate, forKey: .payoutDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.feeTotal, forKey: .feeTotal)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.lineCount, forKey: .lineCount)
        try container.encode(self.matchedCount, forKey: .matchedCount)
        try container.encode(self.unmatchedCount, forKey: .unmatchedCount)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case bankAccountId
        case provider
        case payoutId
        case payoutDate
        case currency
        case grossTotal
        case feeTotal
        case netTotal
        case status
        case journalTransactionId
        case lineCount
        case matchedCount
        case unmatchedCount
        case createdAt
        case updatedAt
        case lines
    }
}
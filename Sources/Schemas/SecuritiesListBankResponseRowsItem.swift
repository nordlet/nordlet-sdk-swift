import Foundation

public struct SecuritiesListBankResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let bankAccountId: String
    public let broker: String
    public let brokerAccount: String
    public let period: String
    public let fileName: Nullable<String>
    public let operationCount: Int64
    public let duplicateCount: Int64
    public let postedCount: Int64
    public let notPostedCount: Int64
    public let realizedTotal: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        bankAccountId: String,
        broker: String,
        brokerAccount: String,
        period: String,
        fileName: Nullable<String>,
        operationCount: Int64,
        duplicateCount: Int64,
        postedCount: Int64,
        notPostedCount: Int64,
        realizedTotal: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.bankAccountId = bankAccountId
        self.broker = broker
        self.brokerAccount = brokerAccount
        self.period = period
        self.fileName = fileName
        self.operationCount = operationCount
        self.duplicateCount = duplicateCount
        self.postedCount = postedCount
        self.notPostedCount = notPostedCount
        self.realizedTotal = realizedTotal
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
        self.broker = try container.decode(String.self, forKey: .broker)
        self.brokerAccount = try container.decode(String.self, forKey: .brokerAccount)
        self.period = try container.decode(String.self, forKey: .period)
        self.fileName = try container.decode(Nullable<String>.self, forKey: .fileName)
        self.operationCount = try container.decode(Int64.self, forKey: .operationCount)
        self.duplicateCount = try container.decode(Int64.self, forKey: .duplicateCount)
        self.postedCount = try container.decode(Int64.self, forKey: .postedCount)
        self.notPostedCount = try container.decode(Int64.self, forKey: .notPostedCount)
        self.realizedTotal = try container.decode(String.self, forKey: .realizedTotal)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.broker, forKey: .broker)
        try container.encode(self.brokerAccount, forKey: .brokerAccount)
        try container.encode(self.period, forKey: .period)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.operationCount, forKey: .operationCount)
        try container.encode(self.duplicateCount, forKey: .duplicateCount)
        try container.encode(self.postedCount, forKey: .postedCount)
        try container.encode(self.notPostedCount, forKey: .notPostedCount)
        try container.encode(self.realizedTotal, forKey: .realizedTotal)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case bankAccountId
        case broker
        case brokerAccount
        case period
        case fileName
        case operationCount
        case duplicateCount
        case postedCount
        case notPostedCount
        case realizedTotal
        case createdAt
    }
}
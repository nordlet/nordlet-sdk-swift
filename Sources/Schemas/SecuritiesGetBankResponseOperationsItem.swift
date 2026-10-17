import Foundation

public struct SecuritiesGetBankResponseOperationsItem: Codable, Hashable, Sendable {
    public let id: String
    public let bankAccountId: String
    public let kind: String
    public let date: CalendarDate
    public let time: Nullable<String>
    public let assetCategory: Nullable<String>
    public let symbol: Nullable<String>
    public let description: Nullable<String>
    public let currency: String
    public let quantity: Nullable<String>
    public let price: Nullable<String>
    public let amount: Nullable<String>
    public let fee: Nullable<String>
    public let brokerRealized: Nullable<String>
    public let code: Nullable<String>
    public let fxRate: Nullable<String>
    public let cashBase: Nullable<String>
    public let costBase: Nullable<String>
    public let realizedBase: Nullable<String>
    public let status: SecuritiesGetBankResponseOperationsItemStatus
    public let note: Nullable<String>
    public let journalTransactionId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        bankAccountId: String,
        kind: String,
        date: CalendarDate,
        time: Nullable<String>,
        assetCategory: Nullable<String>,
        symbol: Nullable<String>,
        description: Nullable<String>,
        currency: String,
        quantity: Nullable<String>,
        price: Nullable<String>,
        amount: Nullable<String>,
        fee: Nullable<String>,
        brokerRealized: Nullable<String>,
        code: Nullable<String>,
        fxRate: Nullable<String>,
        cashBase: Nullable<String>,
        costBase: Nullable<String>,
        realizedBase: Nullable<String>,
        status: SecuritiesGetBankResponseOperationsItemStatus,
        note: Nullable<String>,
        journalTransactionId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.bankAccountId = bankAccountId
        self.kind = kind
        self.date = date
        self.time = time
        self.assetCategory = assetCategory
        self.symbol = symbol
        self.description = description
        self.currency = currency
        self.quantity = quantity
        self.price = price
        self.amount = amount
        self.fee = fee
        self.brokerRealized = brokerRealized
        self.code = code
        self.fxRate = fxRate
        self.cashBase = cashBase
        self.costBase = costBase
        self.realizedBase = realizedBase
        self.status = status
        self.note = note
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.time = try container.decode(Nullable<String>.self, forKey: .time)
        self.assetCategory = try container.decode(Nullable<String>.self, forKey: .assetCategory)
        self.symbol = try container.decode(Nullable<String>.self, forKey: .symbol)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.quantity = try container.decode(Nullable<String>.self, forKey: .quantity)
        self.price = try container.decode(Nullable<String>.self, forKey: .price)
        self.amount = try container.decode(Nullable<String>.self, forKey: .amount)
        self.fee = try container.decode(Nullable<String>.self, forKey: .fee)
        self.brokerRealized = try container.decode(Nullable<String>.self, forKey: .brokerRealized)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.fxRate = try container.decode(Nullable<String>.self, forKey: .fxRate)
        self.cashBase = try container.decode(Nullable<String>.self, forKey: .cashBase)
        self.costBase = try container.decode(Nullable<String>.self, forKey: .costBase)
        self.realizedBase = try container.decode(Nullable<String>.self, forKey: .realizedBase)
        self.status = try container.decode(SecuritiesGetBankResponseOperationsItemStatus.self, forKey: .status)
        self.note = try container.decode(Nullable<String>.self, forKey: .note)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.time, forKey: .time)
        try container.encode(self.assetCategory, forKey: .assetCategory)
        try container.encode(self.symbol, forKey: .symbol)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.price, forKey: .price)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.fee, forKey: .fee)
        try container.encode(self.brokerRealized, forKey: .brokerRealized)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.fxRate, forKey: .fxRate)
        try container.encode(self.cashBase, forKey: .cashBase)
        try container.encode(self.costBase, forKey: .costBase)
        try container.encode(self.realizedBase, forKey: .realizedBase)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.note, forKey: .note)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case bankAccountId
        case kind
        case date
        case time
        case assetCategory
        case symbol
        case description
        case currency
        case quantity
        case price
        case amount
        case fee
        case brokerRealized
        case code
        case fxRate
        case cashBase
        case costBase
        case realizedBase
        case status
        case note
        case journalTransactionId
    }
}
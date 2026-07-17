import Foundation

public struct PostV1PosReportsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let reportNumber: String
    public let date: String
    public let deviceId: Nullable<String>
    public let warehouseId: Nullable<String>
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let cashAmount: String
    public let cardAmount: String
    public let cogsTotal: Nullable<String>
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        reportNumber: String,
        date: String,
        deviceId: Nullable<String>,
        warehouseId: Nullable<String>,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        cashAmount: String,
        cardAmount: String,
        cogsTotal: Nullable<String>,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.reportNumber = reportNumber
        self.date = date
        self.deviceId = deviceId
        self.warehouseId = warehouseId
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.cashAmount = cashAmount
        self.cardAmount = cardAmount
        self.cogsTotal = cogsTotal
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.reportNumber = try container.decode(String.self, forKey: .reportNumber)
        self.date = try container.decode(String.self, forKey: .date)
        self.deviceId = try container.decode(Nullable<String>.self, forKey: .deviceId)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.cashAmount = try container.decode(String.self, forKey: .cashAmount)
        self.cardAmount = try container.decode(String.self, forKey: .cardAmount)
        self.cogsTotal = try container.decode(Nullable<String>.self, forKey: .cogsTotal)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.reportNumber, forKey: .reportNumber)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.cashAmount, forKey: .cashAmount)
        try container.encode(self.cardAmount, forKey: .cardAmount)
        try container.encode(self.cogsTotal, forKey: .cogsTotal)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case reportNumber
        case date
        case deviceId
        case warehouseId
        case netTotal
        case vatTotal
        case grossTotal
        case cashAmount
        case cardAmount
        case cogsTotal
        case journalTransactionId
        case notes
        case createdAt
    }
}
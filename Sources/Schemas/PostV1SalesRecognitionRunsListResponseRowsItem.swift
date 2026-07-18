import Foundation

public struct PostV1SalesRecognitionRunsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let runDate: String
    public let trigger: PostV1SalesRecognitionRunsListResponseRowsItemTrigger
    public let scheduleCount: Int64
    public let totalAmount: String
    public let journalTransactionId: String
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        runDate: String,
        trigger: PostV1SalesRecognitionRunsListResponseRowsItemTrigger,
        scheduleCount: Int64,
        totalAmount: String,
        journalTransactionId: String,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.runDate = runDate
        self.trigger = trigger
        self.scheduleCount = scheduleCount
        self.totalAmount = totalAmount
        self.journalTransactionId = journalTransactionId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.runDate = try container.decode(String.self, forKey: .runDate)
        self.trigger = try container.decode(PostV1SalesRecognitionRunsListResponseRowsItemTrigger.self, forKey: .trigger)
        self.scheduleCount = try container.decode(Int64.self, forKey: .scheduleCount)
        self.totalAmount = try container.decode(String.self, forKey: .totalAmount)
        self.journalTransactionId = try container.decode(String.self, forKey: .journalTransactionId)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.runDate, forKey: .runDate)
        try container.encode(self.trigger, forKey: .trigger)
        try container.encode(self.scheduleCount, forKey: .scheduleCount)
        try container.encode(self.totalAmount, forKey: .totalAmount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case runDate
        case trigger
        case scheduleCount
        case totalAmount
        case journalTransactionId
        case createdAt
    }
}
import Foundation

public struct PostV1SalesRecognitionRunResponse: Codable, Hashable, Sendable {
    public let runId: String
    public let runDate: String
    public let trigger: PostV1SalesRecognitionRunResponseTrigger
    public let scheduleCount: Int64
    public let totalAmount: String
    public let journalTransactionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        runId: String,
        runDate: String,
        trigger: PostV1SalesRecognitionRunResponseTrigger,
        scheduleCount: Int64,
        totalAmount: String,
        journalTransactionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.runId = runId
        self.runDate = runDate
        self.trigger = trigger
        self.scheduleCount = scheduleCount
        self.totalAmount = totalAmount
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.runDate = try container.decode(String.self, forKey: .runDate)
        self.trigger = try container.decode(PostV1SalesRecognitionRunResponseTrigger.self, forKey: .trigger)
        self.scheduleCount = try container.decode(Int64.self, forKey: .scheduleCount)
        self.totalAmount = try container.decode(String.self, forKey: .totalAmount)
        self.journalTransactionId = try container.decode(String.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.runDate, forKey: .runDate)
        try container.encode(self.trigger, forKey: .trigger)
        try container.encode(self.scheduleCount, forKey: .scheduleCount)
        try container.encode(self.totalAmount, forKey: .totalAmount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case runId
        case runDate
        case trigger
        case scheduleCount
        case totalAmount
        case journalTransactionId
    }
}
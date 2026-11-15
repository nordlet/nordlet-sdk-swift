import Foundation

public struct FxRevaluationRunLedgerResponse: Codable, Hashable, Sendable {
    public let runId: Nullable<String>
    public let date: CalendarDate
    public let reversalDate: CalendarDate
    public let journalTransactionId: Nullable<String>
    public let reversalJournalTransactionId: Nullable<String>
    public let gain: String
    public let loss: String
    public let lines: [FxRevaluationRunLedgerResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        runId: Nullable<String>,
        date: CalendarDate,
        reversalDate: CalendarDate,
        journalTransactionId: Nullable<String>,
        reversalJournalTransactionId: Nullable<String>,
        gain: String,
        loss: String,
        lines: [FxRevaluationRunLedgerResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.runId = runId
        self.date = date
        self.reversalDate = reversalDate
        self.journalTransactionId = journalTransactionId
        self.reversalJournalTransactionId = reversalJournalTransactionId
        self.gain = gain
        self.loss = loss
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.runId = try container.decode(Nullable<String>.self, forKey: .runId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.reversalDate = try container.decode(CalendarDate.self, forKey: .reversalDate)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.reversalJournalTransactionId = try container.decode(Nullable<String>.self, forKey: .reversalJournalTransactionId)
        self.gain = try container.decode(String.self, forKey: .gain)
        self.loss = try container.decode(String.self, forKey: .loss)
        self.lines = try container.decode([FxRevaluationRunLedgerResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.reversalDate, forKey: .reversalDate)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.reversalJournalTransactionId, forKey: .reversalJournalTransactionId)
        try container.encode(self.gain, forKey: .gain)
        try container.encode(self.loss, forKey: .loss)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case runId
        case date
        case reversalDate
        case journalTransactionId
        case reversalJournalTransactionId
        case gain
        case loss
        case lines
    }
}
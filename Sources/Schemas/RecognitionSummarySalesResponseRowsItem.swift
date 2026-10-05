import Foundation

public struct RecognitionSummarySalesResponseRowsItem: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let invoiceFullNumber: Nullable<String>
    public let invoiceLineId: String
    public let lineDescription: String
    public let method: RecognitionSummarySalesResponseRowsItemMethod
    public let deferredTotal: String
    public let recognizedToDate: CalendarDate
    public let remaining: String
    public let pendingCount: Int64
    public let nextScheduleDate: Nullable<CalendarDate>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        invoiceFullNumber: Nullable<String>,
        invoiceLineId: String,
        lineDescription: String,
        method: RecognitionSummarySalesResponseRowsItemMethod,
        deferredTotal: String,
        recognizedToDate: CalendarDate,
        remaining: String,
        pendingCount: Int64,
        nextScheduleDate: Nullable<CalendarDate>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.invoiceFullNumber = invoiceFullNumber
        self.invoiceLineId = invoiceLineId
        self.lineDescription = lineDescription
        self.method = method
        self.deferredTotal = deferredTotal
        self.recognizedToDate = recognizedToDate
        self.remaining = remaining
        self.pendingCount = pendingCount
        self.nextScheduleDate = nextScheduleDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.invoiceFullNumber = try container.decode(Nullable<String>.self, forKey: .invoiceFullNumber)
        self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
        self.lineDescription = try container.decode(String.self, forKey: .lineDescription)
        self.method = try container.decode(RecognitionSummarySalesResponseRowsItemMethod.self, forKey: .method)
        self.deferredTotal = try container.decode(String.self, forKey: .deferredTotal)
        self.recognizedToDate = try container.decode(CalendarDate.self, forKey: .recognizedToDate)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.pendingCount = try container.decode(Int64.self, forKey: .pendingCount)
        self.nextScheduleDate = try container.decode(Nullable<CalendarDate>.self, forKey: .nextScheduleDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceFullNumber, forKey: .invoiceFullNumber)
        try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
        try container.encode(self.lineDescription, forKey: .lineDescription)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.deferredTotal, forKey: .deferredTotal)
        try container.encode(self.recognizedToDate, forKey: .recognizedToDate)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.pendingCount, forKey: .pendingCount)
        try container.encode(self.nextScheduleDate, forKey: .nextScheduleDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case invoiceFullNumber
        case invoiceLineId
        case lineDescription
        case method
        case deferredTotal
        case recognizedToDate
        case remaining
        case pendingCount
        case nextScheduleDate
    }
}
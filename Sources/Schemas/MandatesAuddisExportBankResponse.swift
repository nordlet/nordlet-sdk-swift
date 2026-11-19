import Foundation

public struct MandatesAuddisExportBankResponse: Codable, Hashable, Sendable {
    public let format: MandatesAuddisExportBankResponseFormat
    public let messageId: String
    public let fileName: String
    public let contentType: String
    public let transactionCount: Int64
    public let controlSum: String
    public let content: String
    public let processingDate: CalendarDate
    public let lodged: [String]
    public let cancelled: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        format: MandatesAuddisExportBankResponseFormat,
        messageId: String,
        fileName: String,
        contentType: String,
        transactionCount: Int64,
        controlSum: String,
        content: String,
        processingDate: CalendarDate,
        lodged: [String],
        cancelled: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.format = format
        self.messageId = messageId
        self.fileName = fileName
        self.contentType = contentType
        self.transactionCount = transactionCount
        self.controlSum = controlSum
        self.content = content
        self.processingDate = processingDate
        self.lodged = lodged
        self.cancelled = cancelled
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.format = try container.decode(MandatesAuddisExportBankResponseFormat.self, forKey: .format)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.transactionCount = try container.decode(Int64.self, forKey: .transactionCount)
        self.controlSum = try container.decode(String.self, forKey: .controlSum)
        self.content = try container.decode(String.self, forKey: .content)
        self.processingDate = try container.decode(CalendarDate.self, forKey: .processingDate)
        self.lodged = try container.decode([String].self, forKey: .lodged)
        self.cancelled = try container.decode([String].self, forKey: .cancelled)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.format, forKey: .format)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.contentType, forKey: .contentType)
        try container.encode(self.transactionCount, forKey: .transactionCount)
        try container.encode(self.controlSum, forKey: .controlSum)
        try container.encode(self.content, forKey: .content)
        try container.encode(self.processingDate, forKey: .processingDate)
        try container.encode(self.lodged, forKey: .lodged)
        try container.encode(self.cancelled, forKey: .cancelled)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case format
        case messageId
        case fileName
        case contentType
        case transactionCount
        case controlSum
        case content
        case processingDate
        case lodged
        case cancelled
    }
}
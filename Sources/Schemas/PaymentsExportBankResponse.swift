import Foundation

public struct PaymentsExportBankResponse: Codable, Hashable, Sendable {
    public let format: PaymentsExportBankResponseFormat
    public let messageId: String
    public let fileName: String
    public let contentType: String
    public let transactionCount: Int64
    public let controlSum: String
    public let content: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        format: PaymentsExportBankResponseFormat,
        messageId: String,
        fileName: String,
        contentType: String,
        transactionCount: Int64,
        controlSum: String,
        content: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.format = format
        self.messageId = messageId
        self.fileName = fileName
        self.contentType = contentType
        self.transactionCount = transactionCount
        self.controlSum = controlSum
        self.content = content
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.format = try container.decode(PaymentsExportBankResponseFormat.self, forKey: .format)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.transactionCount = try container.decode(Int64.self, forKey: .transactionCount)
        self.controlSum = try container.decode(String.self, forKey: .controlSum)
        self.content = try container.decode(String.self, forKey: .content)
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
    }
}
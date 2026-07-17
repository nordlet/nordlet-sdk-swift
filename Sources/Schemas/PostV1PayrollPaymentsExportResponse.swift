import Foundation

public struct PostV1PayrollPaymentsExportResponse: Codable, Hashable, Sendable {
    public let messageId: String
    public let fileName: String
    public let transactionCount: Int64
    public let controlSum: String
    public let xml: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        messageId: String,
        fileName: String,
        transactionCount: Int64,
        controlSum: String,
        xml: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.messageId = messageId
        self.fileName = fileName
        self.transactionCount = transactionCount
        self.controlSum = controlSum
        self.xml = xml
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.transactionCount = try container.decode(Int64.self, forKey: .transactionCount)
        self.controlSum = try container.decode(String.self, forKey: .controlSum)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.transactionCount, forKey: .transactionCount)
        try container.encode(self.controlSum, forKey: .controlSum)
        try container.encode(self.xml, forKey: .xml)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case fileName
        case transactionCount
        case controlSum
        case xml
    }
}
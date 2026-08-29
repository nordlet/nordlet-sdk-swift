import Foundation

public struct PostV1SalesInvoicesEinvoiceSendResponse: Codable, Hashable, Sendable {
    public let sent: Bool
    public let system: String
    public let format: String
    public let messageId: String
    public let fileId: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sent: Bool,
        system: String,
        format: String,
        messageId: String,
        fileId: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sent = sent
        self.system = system
        self.format = format
        self.messageId = messageId
        self.fileId = fileId
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sent = try container.decode(Bool.self, forKey: .sent)
        self.system = try container.decode(String.self, forKey: .system)
        self.format = try container.decode(String.self, forKey: .format)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sent, forKey: .sent)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.format, forKey: .format)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sent
        case system
        case format
        case messageId
        case fileId
        case warnings
    }
}
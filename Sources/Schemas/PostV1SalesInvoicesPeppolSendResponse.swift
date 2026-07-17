import Foundation

public struct PostV1SalesInvoicesPeppolSendResponse: Codable, Hashable, Sendable {
    public let sent: Bool
    public let messageId: String
    public let receiverId: String
    public let fileId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sent: Bool,
        messageId: String,
        receiverId: String,
        fileId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sent = sent
        self.messageId = messageId
        self.receiverId = receiverId
        self.fileId = fileId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sent = try container.decode(Bool.self, forKey: .sent)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.receiverId = try container.decode(String.self, forKey: .receiverId)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sent, forKey: .sent)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.receiverId, forKey: .receiverId)
        try container.encode(self.fileId, forKey: .fileId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sent
        case messageId
        case receiverId
        case fileId
    }
}
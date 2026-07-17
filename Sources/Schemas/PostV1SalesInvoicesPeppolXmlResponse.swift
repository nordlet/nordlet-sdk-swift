import Foundation

public struct PostV1SalesInvoicesPeppolXmlResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let contentType: String
    public let data: String
    public let senderId: String
    public let receiverId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        contentType: String,
        data: String,
        senderId: String,
        receiverId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.contentType = contentType
        self.data = data
        self.senderId = senderId
        self.receiverId = receiverId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.data = try container.decode(String.self, forKey: .data)
        self.senderId = try container.decode(String.self, forKey: .senderId)
        self.receiverId = try container.decode(String.self, forKey: .receiverId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.contentType, forKey: .contentType)
        try container.encode(self.data, forKey: .data)
        try container.encode(self.senderId, forKey: .senderId)
        try container.encode(self.receiverId, forKey: .receiverId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case contentType
        case data
        case senderId
        case receiverId
    }
}
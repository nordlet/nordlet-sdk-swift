import Foundation

public struct PostV1SalesInvoicesEinvoiceStatusResponse: Codable, Hashable, Sendable {
    public let system: String
    public let transport: PostV1SalesInvoicesEinvoiceStatusResponseTransport
    public let messageId: String
    public let nationalNumber: Nullable<String>
    public let status: PostV1SalesInvoicesEinvoiceStatusResponseStatus
    public let detail: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        system: String,
        transport: PostV1SalesInvoicesEinvoiceStatusResponseTransport,
        messageId: String,
        nationalNumber: Nullable<String>,
        status: PostV1SalesInvoicesEinvoiceStatusResponseStatus,
        detail: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.system = system
        self.transport = transport
        self.messageId = messageId
        self.nationalNumber = nationalNumber
        self.status = status
        self.detail = detail
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.system = try container.decode(String.self, forKey: .system)
        self.transport = try container.decode(PostV1SalesInvoicesEinvoiceStatusResponseTransport.self, forKey: .transport)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.nationalNumber = try container.decode(Nullable<String>.self, forKey: .nationalNumber)
        self.status = try container.decode(PostV1SalesInvoicesEinvoiceStatusResponseStatus.self, forKey: .status)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.transport, forKey: .transport)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.nationalNumber, forKey: .nationalNumber)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.detail, forKey: .detail)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case system
        case transport
        case messageId
        case nationalNumber
        case status
        case detail
    }
}
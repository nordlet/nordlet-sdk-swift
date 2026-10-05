import Foundation

public struct InvoicesEinvoiceSendSalesResponse: Codable, Hashable, Sendable {
    public let sent: Bool
    public let system: String
    public let format: String
    public let transport: InvoicesEinvoiceSendSalesResponseTransport
    public let messageId: String
    public let nationalNumber: Nullable<String>
    public let status: InvoicesEinvoiceSendSalesResponseStatus
    public let detail: Nullable<String>
    public let fileId: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sent: Bool,
        system: String,
        format: String,
        transport: InvoicesEinvoiceSendSalesResponseTransport,
        messageId: String,
        nationalNumber: Nullable<String>,
        status: InvoicesEinvoiceSendSalesResponseStatus,
        detail: Nullable<String>,
        fileId: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sent = sent
        self.system = system
        self.format = format
        self.transport = transport
        self.messageId = messageId
        self.nationalNumber = nationalNumber
        self.status = status
        self.detail = detail
        self.fileId = fileId
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sent = try container.decode(Bool.self, forKey: .sent)
        self.system = try container.decode(String.self, forKey: .system)
        self.format = try container.decode(String.self, forKey: .format)
        self.transport = try container.decode(InvoicesEinvoiceSendSalesResponseTransport.self, forKey: .transport)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.nationalNumber = try container.decode(Nullable<String>.self, forKey: .nationalNumber)
        self.status = try container.decode(InvoicesEinvoiceSendSalesResponseStatus.self, forKey: .status)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
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
        try container.encode(self.transport, forKey: .transport)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.nationalNumber, forKey: .nationalNumber)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sent
        case system
        case format
        case transport
        case messageId
        case nationalNumber
        case status
        case detail
        case fileId
        case warnings
    }
}
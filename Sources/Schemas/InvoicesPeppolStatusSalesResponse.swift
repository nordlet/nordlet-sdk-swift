import Foundation

public struct InvoicesPeppolStatusSalesResponse: Codable, Hashable, Sendable {
    public let messageId: String
    public let status: InvoicesPeppolStatusSalesResponseStatus
    public let detail: Nullable<String>
    public let checkedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        messageId: String,
        status: InvoicesPeppolStatusSalesResponseStatus,
        detail: Nullable<String>,
        checkedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.messageId = messageId
        self.status = status
        self.detail = detail
        self.checkedAt = checkedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.status = try container.decode(InvoicesPeppolStatusSalesResponseStatus.self, forKey: .status)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.checkedAt = try container.decode(Date.self, forKey: .checkedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.messageId, forKey: .messageId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.checkedAt, forKey: .checkedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case status
        case detail
        case checkedAt
    }
}
import Foundation

public struct PostV1SalesInvoicesSendResponse: Codable, Hashable, Sendable {
    public let sent: Bool
    public let to: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sent: Bool,
        to: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sent = sent
        self.to = to
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sent = try container.decode(Bool.self, forKey: .sent)
        self.to = try container.decode(String.self, forKey: .to)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sent, forKey: .sent)
        try container.encode(self.to, forKey: .to)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sent
        case to
    }
}
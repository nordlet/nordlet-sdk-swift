import Foundation

public struct InvoicesPaymentLinkSalesResponse: Codable, Hashable, Sendable {
    public let url: Nullable<String>
    public let source: Nullable<InvoicesPaymentLinkSalesResponseSource>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        url: Nullable<String>,
        source: Nullable<InvoicesPaymentLinkSalesResponseSource>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.url = url
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try container.decode(Nullable<String>.self, forKey: .url)
        self.source = try container.decode(Nullable<InvoicesPaymentLinkSalesResponseSource>.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.url, forKey: .url)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case source
    }
}
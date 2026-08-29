import Foundation

public struct PostV1SalesInvoicesCreateResponseVatEvidenceLocation: Codable, Hashable, Sendable {
    public let billingCountryCode: Nullable<String>
    public let source: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billingCountryCode: Nullable<String>,
        source: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billingCountryCode = billingCountryCode
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billingCountryCode = try container.decode(Nullable<String>.self, forKey: .billingCountryCode)
        self.source = try container.decode(Nullable<String>.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.billingCountryCode, forKey: .billingCountryCode)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billingCountryCode
        case source
    }
}
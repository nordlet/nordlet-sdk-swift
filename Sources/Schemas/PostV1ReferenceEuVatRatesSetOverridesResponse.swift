import Foundation

public struct PostV1ReferenceEuVatRatesSetOverridesResponse: Codable, Hashable, Sendable {
    public let countryCode: String
    public let source: PostV1ReferenceEuVatRatesSetOverridesResponseSource
    public let notice: String
    public let rows: [PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        source: PostV1ReferenceEuVatRatesSetOverridesResponseSource,
        notice: String,
        rows: [PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.source = source
        self.notice = notice
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.source = try container.decode(PostV1ReferenceEuVatRatesSetOverridesResponseSource.self, forKey: .source)
        self.notice = try container.decode(String.self, forKey: .notice)
        self.rows = try container.decode([PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.notice, forKey: .notice)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case source
        case notice
        case rows
    }
}
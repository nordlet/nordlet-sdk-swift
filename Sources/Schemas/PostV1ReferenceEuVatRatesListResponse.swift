import Foundation

public struct PostV1ReferenceEuVatRatesListResponse: Codable, Hashable, Sendable {
    public let notice: String
    public let rows: [PostV1ReferenceEuVatRatesListResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        notice: String,
        rows: [PostV1ReferenceEuVatRatesListResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.notice = notice
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.notice = try container.decode(String.self, forKey: .notice)
        self.rows = try container.decode([PostV1ReferenceEuVatRatesListResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.notice, forKey: .notice)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case notice
        case rows
    }
}
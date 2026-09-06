import Foundation

public struct PostV1DeclarationsConfigsListResponse: Codable, Hashable, Sendable {
    public let companyCountry: String
    public let rows: [PostV1DeclarationsConfigsListResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyCountry: String,
        rows: [PostV1DeclarationsConfigsListResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyCountry = companyCountry
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyCountry = try container.decode(String.self, forKey: .companyCountry)
        self.rows = try container.decode([PostV1DeclarationsConfigsListResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.companyCountry, forKey: .companyCountry)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyCountry
        case rows
    }
}
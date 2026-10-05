import Foundation

public struct ConfigsListDeclarationsResponse: Codable, Hashable, Sendable {
    public let companyCountry: String
    public let rows: [ConfigsListDeclarationsResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyCountry: String,
        rows: [ConfigsListDeclarationsResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyCountry = companyCountry
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyCountry = try container.decode(String.self, forKey: .companyCountry)
        self.rows = try container.decode([ConfigsListDeclarationsResponseRowsItem].self, forKey: .rows)
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
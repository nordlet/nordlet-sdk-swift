import Foundation

public struct PostV1CatalogPriceListsItemsSetResponse: Codable, Hashable, Sendable {
    public let updated: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        updated: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.updated = updated
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.updated = try container.decode(Int64.self, forKey: .updated)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.updated, forKey: .updated)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case updated
    }
}
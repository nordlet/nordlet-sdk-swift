import Foundation

public struct PostV1ReferenceExchangeRatesSyncResponse: Codable, Hashable, Sendable {
    public let date: String
    public let imported: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: String,
        imported: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.imported = imported
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(String.self, forKey: .date)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.imported, forKey: .imported)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case imported
    }
}
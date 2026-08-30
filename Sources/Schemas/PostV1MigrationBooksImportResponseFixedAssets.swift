import Foundation

public struct PostV1MigrationBooksImportResponseFixedAssets: Codable, Hashable, Sendable {
    public let created: Int64
    public let costTotal: String
    public let accumulatedDepreciationTotal: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        created: Int64,
        costTotal: String,
        accumulatedDepreciationTotal: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.created = created
        self.costTotal = costTotal
        self.accumulatedDepreciationTotal = accumulatedDepreciationTotal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.created = try container.decode(Int64.self, forKey: .created)
        self.costTotal = try container.decode(String.self, forKey: .costTotal)
        self.accumulatedDepreciationTotal = try container.decode(String.self, forKey: .accumulatedDepreciationTotal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.created, forKey: .created)
        try container.encode(self.costTotal, forKey: .costTotal)
        try container.encode(self.accumulatedDepreciationTotal, forKey: .accumulatedDepreciationTotal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case costTotal
        case accumulatedDepreciationTotal
    }
}
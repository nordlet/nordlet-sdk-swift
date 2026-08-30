import Foundation

public struct PostV1MigrationBooksImportResponseStock: Codable, Hashable, Sendable {
    public let movements: Int64
    public let costTotal: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movements: Int64,
        costTotal: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movements = movements
        self.costTotal = costTotal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movements = try container.decode(Int64.self, forKey: .movements)
        self.costTotal = try container.decode(String.self, forKey: .costTotal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movements, forKey: .movements)
        try container.encode(self.costTotal, forKey: .costTotal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movements
        case costTotal
    }
}
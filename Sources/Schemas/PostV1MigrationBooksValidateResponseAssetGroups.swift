import Foundation

public struct PostV1MigrationBooksValidateResponseAssetGroups: Codable, Hashable, Sendable {
    public let created: Int64
    public let existing: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        created: Int64,
        existing: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.created = created
        self.existing = existing
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.created = try container.decode(Int64.self, forKey: .created)
        self.existing = try container.decode(Int64.self, forKey: .existing)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.created, forKey: .created)
        try container.encode(self.existing, forKey: .existing)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case existing
    }
}
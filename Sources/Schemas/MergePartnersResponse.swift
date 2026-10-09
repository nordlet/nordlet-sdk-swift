import Foundation

public struct MergePartnersResponse: Codable, Hashable, Sendable {
    public let targetId: String
    public let sourceId: String
    public let moved: [MergePartnersResponseMovedItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        targetId: String,
        sourceId: String,
        moved: [MergePartnersResponseMovedItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.targetId = targetId
        self.sourceId = sourceId
        self.moved = moved
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.targetId = try container.decode(String.self, forKey: .targetId)
        self.sourceId = try container.decode(String.self, forKey: .sourceId)
        self.moved = try container.decode([MergePartnersResponseMovedItem].self, forKey: .moved)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.targetId, forKey: .targetId)
        try container.encode(self.sourceId, forKey: .sourceId)
        try container.encode(self.moved, forKey: .moved)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case targetId
        case sourceId
        case moved
    }
}
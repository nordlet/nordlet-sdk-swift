import Foundation

public struct PostV1AccountMembersRemoveResponse: Codable, Hashable, Sendable {
    public let removed: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        removed: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.removed = removed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.removed = try container.decode(Bool.self, forKey: .removed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.removed, forKey: .removed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case removed
    }
}
import Foundation

public struct PostV1AccountSessionsRevokeOthersResponse: Codable, Hashable, Sendable {
    public let revoked: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        revoked: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.revoked = revoked
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.revoked = try container.decode(Int64.self, forKey: .revoked)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.revoked, forKey: .revoked)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case revoked
    }
}
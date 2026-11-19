import Foundation

public struct GbHmrcConnectDeclarationsResponse: Codable, Hashable, Sendable {
    public let accessTokenExpiresAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accessTokenExpiresAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accessTokenExpiresAt = accessTokenExpiresAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accessTokenExpiresAt = try container.decode(Date.self, forKey: .accessTokenExpiresAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accessTokenExpiresAt, forKey: .accessTokenExpiresAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accessTokenExpiresAt
    }
}
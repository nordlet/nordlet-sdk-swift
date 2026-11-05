import Foundation

public struct TwoFactorGetAccountResponseSetup: Codable, Hashable, Sendable {
    public let secret: String
    public let otpauthUrl: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        secret: String,
        otpauthUrl: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.secret = secret
        self.otpauthUrl = otpauthUrl
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.secret = try container.decode(String.self, forKey: .secret)
        self.otpauthUrl = try container.decode(String.self, forKey: .otpauthUrl)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.secret, forKey: .secret)
        try container.encode(self.otpauthUrl, forKey: .otpauthUrl)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case secret
        case otpauthUrl
    }
}
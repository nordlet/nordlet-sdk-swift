import Foundation

public struct OauthAuthorizeApproveAccountResponse: Codable, Hashable, Sendable {
    public let redirectTo: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        redirectTo: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.redirectTo = redirectTo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.redirectTo = try container.decode(String.self, forKey: .redirectTo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.redirectTo, forKey: .redirectTo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case redirectTo
    }
}
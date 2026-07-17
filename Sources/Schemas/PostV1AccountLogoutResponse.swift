import Foundation

public struct PostV1AccountLogoutResponse: Codable, Hashable, Sendable {
    public let loggedOut: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        loggedOut: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.loggedOut = loggedOut
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.loggedOut = try container.decode(Bool.self, forKey: .loggedOut)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.loggedOut, forKey: .loggedOut)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case loggedOut
    }
}
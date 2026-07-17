import Foundation

public struct PostV1EcommerceOrdersCreateRequestPartner: Codable, Hashable, Sendable {
    public let name: String
    public let email: String?
    public let code: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        email: String? = nil,
        code: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.email = email
        self.code = code
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.code, forKey: .code)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case email
        case code
    }
}
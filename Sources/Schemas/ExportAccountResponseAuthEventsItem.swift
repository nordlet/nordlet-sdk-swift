import Foundation

public struct ExportAccountResponseAuthEventsItem: Codable, Hashable, Sendable {
    public let action: String
    public let ipAddress: Nullable<String>
    public let userAgent: Nullable<String>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: String,
        ipAddress: Nullable<String>,
        userAgent: Nullable<String>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.ipAddress = ipAddress
        self.userAgent = userAgent
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decode(String.self, forKey: .action)
        self.ipAddress = try container.decode(Nullable<String>.self, forKey: .ipAddress)
        self.userAgent = try container.decode(Nullable<String>.self, forKey: .userAgent)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.ipAddress, forKey: .ipAddress)
        try container.encode(self.userAgent, forKey: .userAgent)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case ipAddress
        case userAgent
        case createdAt
    }
}
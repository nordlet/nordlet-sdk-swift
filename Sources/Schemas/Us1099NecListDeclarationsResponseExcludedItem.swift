import Foundation

public struct Us1099NecListDeclarationsResponseExcludedItem: Codable, Hashable, Sendable {
    public let partnerId: String
    public let name: String
    public let paid: String
    public let reason: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        name: String,
        paid: String,
        reason: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.name = name
        self.paid = paid
        self.reason = reason
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.name = try container.decode(String.self, forKey: .name)
        self.paid = try container.decode(String.self, forKey: .paid)
        self.reason = try container.decode(String.self, forKey: .reason)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.paid, forKey: .paid)
        try container.encode(self.reason, forKey: .reason)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case name
        case paid
        case reason
    }
}
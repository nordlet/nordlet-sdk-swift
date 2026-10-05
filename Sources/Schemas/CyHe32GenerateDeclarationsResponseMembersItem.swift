import Foundation

public struct CyHe32GenerateDeclarationsResponseMembersItem: Codable, Hashable, Sendable {
    public let name: String
    public let identifier: String
    public let shares: String
    public let nominalValue: String
    public let shareClass: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        identifier: String,
        shares: String,
        nominalValue: String,
        shareClass: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.identifier = identifier
        self.shares = shares
        self.nominalValue = nominalValue
        self.shareClass = shareClass
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.identifier = try container.decode(String.self, forKey: .identifier)
        self.shares = try container.decode(String.self, forKey: .shares)
        self.nominalValue = try container.decode(String.self, forKey: .nominalValue)
        self.shareClass = try container.decode(String.self, forKey: .shareClass)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.identifier, forKey: .identifier)
        try container.encode(self.shares, forKey: .shares)
        try container.encode(self.nominalValue, forKey: .nominalValue)
        try container.encode(self.shareClass, forKey: .shareClass)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case identifier
        case shares
        case nominalValue
        case shareClass
    }
}
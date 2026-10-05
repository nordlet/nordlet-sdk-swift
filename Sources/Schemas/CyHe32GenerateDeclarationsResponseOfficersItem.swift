import Foundation

public struct CyHe32GenerateDeclarationsResponseOfficersItem: Codable, Hashable, Sendable {
    public let position: String
    public let name: String
    public let identifier: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        position: String,
        name: String,
        identifier: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.position = position
        self.name = name
        self.identifier = identifier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.position = try container.decode(String.self, forKey: .position)
        self.name = try container.decode(String.self, forKey: .name)
        self.identifier = try container.decode(Nullable<String>.self, forKey: .identifier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.position, forKey: .position)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.identifier, forKey: .identifier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case position
        case name
        case identifier
    }
}
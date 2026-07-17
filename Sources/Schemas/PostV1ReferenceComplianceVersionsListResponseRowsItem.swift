import Foundation

public struct PostV1ReferenceComplianceVersionsListResponseRowsItem: Codable, Hashable, Sendable {
    public let country: String
    public let system: String
    public let artifact: String
    public let version: String
    public let verifiedOn: String
    public let source: String
    public let resource: String?
    public let notes: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        country: String,
        system: String,
        artifact: String,
        version: String,
        verifiedOn: String,
        source: String,
        resource: String? = nil,
        notes: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.country = country
        self.system = system
        self.artifact = artifact
        self.version = version
        self.verifiedOn = verifiedOn
        self.source = source
        self.resource = resource
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.country = try container.decode(String.self, forKey: .country)
        self.system = try container.decode(String.self, forKey: .system)
        self.artifact = try container.decode(String.self, forKey: .artifact)
        self.version = try container.decode(String.self, forKey: .version)
        self.verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
        self.source = try container.decode(String.self, forKey: .source)
        self.resource = try container.decodeIfPresent(String.self, forKey: .resource)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.artifact, forKey: .artifact)
        try container.encode(self.version, forKey: .version)
        try container.encode(self.verifiedOn, forKey: .verifiedOn)
        try container.encode(self.source, forKey: .source)
        try container.encodeIfPresent(self.resource, forKey: .resource)
        try container.encodeIfPresent(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case country
        case system
        case artifact
        case version
        case verifiedOn
        case source
        case resource
        case notes
    }
}
import Foundation

public struct PostV1DeclarationsConfigsUpdateResponse: Codable, Hashable, Sendable {
    public let system: String
    public let country: String
    public let title: String
    public let fields: [PostV1DeclarationsConfigsUpdateResponseFieldsItem]
    public let endpoints: [PostV1DeclarationsConfigsUpdateResponseEndpointsItem]?
    public let values: [String: String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        system: String,
        country: String,
        title: String,
        fields: [PostV1DeclarationsConfigsUpdateResponseFieldsItem],
        endpoints: [PostV1DeclarationsConfigsUpdateResponseEndpointsItem]? = nil,
        values: [String: String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.system = system
        self.country = country
        self.title = title
        self.fields = fields
        self.endpoints = endpoints
        self.values = values
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.system = try container.decode(String.self, forKey: .system)
        self.country = try container.decode(String.self, forKey: .country)
        self.title = try container.decode(String.self, forKey: .title)
        self.fields = try container.decode([PostV1DeclarationsConfigsUpdateResponseFieldsItem].self, forKey: .fields)
        self.endpoints = try container.decodeIfPresent([PostV1DeclarationsConfigsUpdateResponseEndpointsItem].self, forKey: .endpoints)
        self.values = try container.decode([String: String].self, forKey: .values)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.fields, forKey: .fields)
        try container.encodeIfPresent(self.endpoints, forKey: .endpoints)
        try container.encode(self.values, forKey: .values)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case system
        case country
        case title
        case fields
        case endpoints
        case values
    }
}
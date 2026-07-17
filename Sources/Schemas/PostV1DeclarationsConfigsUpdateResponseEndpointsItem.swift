import Foundation

public struct PostV1DeclarationsConfigsUpdateResponseEndpointsItem: Codable, Hashable, Sendable {
    public let name: String
    public let test: String?
    public let production: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        test: String? = nil,
        production: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.test = test
        self.production = production
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.test = try container.decodeIfPresent(String.self, forKey: .test)
        self.production = try container.decodeIfPresent(String.self, forKey: .production)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.test, forKey: .test)
        try container.encodeIfPresent(self.production, forKey: .production)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case test
        case production
    }
}
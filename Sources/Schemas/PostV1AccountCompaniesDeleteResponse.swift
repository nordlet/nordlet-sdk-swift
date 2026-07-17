import Foundation

public struct PostV1AccountCompaniesDeleteResponse: Codable, Hashable, Sendable {
    public let id: String
    public let status: String
    public let purgeAfter: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        status: String,
        purgeAfter: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.status = status
        self.purgeAfter = purgeAfter
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.status = try container.decode(String.self, forKey: .status)
        self.purgeAfter = try container.decode(String.self, forKey: .purgeAfter)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.purgeAfter, forKey: .purgeAfter)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case status
        case purgeAfter
    }
}
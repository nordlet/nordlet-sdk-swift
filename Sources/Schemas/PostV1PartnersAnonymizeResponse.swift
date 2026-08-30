import Foundation

public struct PostV1PartnersAnonymizeResponse: Codable, Hashable, Sendable {
    public let id: String
    public let anonymized: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        anonymized: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.anonymized = anonymized
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.anonymized = try container.decode(Bool.self, forKey: .anonymized)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.anonymized, forKey: .anonymized)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case anonymized
    }
}
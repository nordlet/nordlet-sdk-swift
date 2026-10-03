import Foundation

public struct PostV1DeclarationsDeReturnFactsGetResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let facts: PostV1DeclarationsDeReturnFactsGetResponseFacts
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        facts: PostV1DeclarationsDeReturnFactsGetResponseFacts,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.facts = facts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.facts = try container.decode(PostV1DeclarationsDeReturnFactsGetResponseFacts.self, forKey: .facts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.facts, forKey: .facts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case facts
    }
}
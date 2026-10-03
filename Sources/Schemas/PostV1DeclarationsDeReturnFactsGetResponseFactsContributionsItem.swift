import Foundation

public struct PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem: Codable, Hashable, Sendable {
    public let name: String
    public let date: String
    public let kind: PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItemKind
    public let description: String?
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        date: String,
        kind: PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItemKind,
        description: String? = nil,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.date = date
        self.kind = kind
        self.description = description
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.date = try container.decode(String.self, forKey: .date)
        self.kind = try container.decode(PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItemKind.self, forKey: .kind)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case date
        case kind
        case description
        case amount
    }
}
import Foundation

public struct PostV1DeclarationsTaxAdjustmentsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let kind: PostV1DeclarationsTaxAdjustmentsListResponseRowsItemKind
    public let code: Nullable<String>
    public let amount: String
    public let description: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        kind: PostV1DeclarationsTaxAdjustmentsListResponseRowsItemKind,
        code: Nullable<String>,
        amount: String,
        description: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.kind = kind
        self.code = code
        self.amount = amount
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.kind = try container.decode(PostV1DeclarationsTaxAdjustmentsListResponseRowsItemKind.self, forKey: .kind)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.description = try container.decode(String.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case kind
        case code
        case amount
        case description
    }
}
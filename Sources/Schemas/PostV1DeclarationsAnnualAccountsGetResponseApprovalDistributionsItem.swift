import Foundation

public struct PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItem: Codable, Hashable, Sendable {
    public let id: String
    public let decidedOn: String
    public let kind: PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItemKind
    public let amount: String
    public let description: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        decidedOn: String,
        kind: PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItemKind,
        amount: String,
        description: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.decidedOn = decidedOn
        self.kind = kind
        self.amount = amount
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.decidedOn = try container.decode(String.self, forKey: .decidedOn)
        self.kind = try container.decode(PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItemKind.self, forKey: .kind)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.decidedOn, forKey: .decidedOn)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case decidedOn
        case kind
        case amount
        case description
    }
}
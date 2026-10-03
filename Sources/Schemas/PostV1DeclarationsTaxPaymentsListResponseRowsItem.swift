import Foundation

public struct PostV1DeclarationsTaxPaymentsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let tax: String
    public let year: Int64
    public let month: Nullable<Int64>
    public let kind: PostV1DeclarationsTaxPaymentsListResponseRowsItemKind
    public let amount: String
    public let paidOn: String
    public let reference: Nullable<String>
    public let description: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        tax: String,
        year: Int64,
        month: Nullable<Int64>,
        kind: PostV1DeclarationsTaxPaymentsListResponseRowsItemKind,
        amount: String,
        paidOn: String,
        reference: Nullable<String>,
        description: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.tax = tax
        self.year = year
        self.month = month
        self.kind = kind
        self.amount = amount
        self.paidOn = paidOn
        self.reference = reference
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.tax = try container.decode(String.self, forKey: .tax)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Nullable<Int64>.self, forKey: .month)
        self.kind = try container.decode(PostV1DeclarationsTaxPaymentsListResponseRowsItemKind.self, forKey: .kind)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.paidOn = try container.decode(String.self, forKey: .paidOn)
        self.reference = try container.decode(Nullable<String>.self, forKey: .reference)
        self.description = try container.decode(String.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.tax, forKey: .tax)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.paidOn, forKey: .paidOn)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case tax
        case year
        case month
        case kind
        case amount
        case paidOn
        case reference
        case description
    }
}
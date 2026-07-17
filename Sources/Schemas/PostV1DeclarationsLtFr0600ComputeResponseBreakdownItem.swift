import Foundation

public struct PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem: Codable, Hashable, Sendable {
    public let direction: PostV1DeclarationsLtFr0600ComputeResponseBreakdownItemDirection
    public let taxCode: Nullable<String>
    public let net: String
    public let vat: String
    public let taxableFields: [String]
    public let vatFields: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        direction: PostV1DeclarationsLtFr0600ComputeResponseBreakdownItemDirection,
        taxCode: Nullable<String>,
        net: String,
        vat: String,
        taxableFields: [String],
        vatFields: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.direction = direction
        self.taxCode = taxCode
        self.net = net
        self.vat = vat
        self.taxableFields = taxableFields
        self.vatFields = vatFields
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.direction = try container.decode(PostV1DeclarationsLtFr0600ComputeResponseBreakdownItemDirection.self, forKey: .direction)
        self.taxCode = try container.decode(Nullable<String>.self, forKey: .taxCode)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.taxableFields = try container.decode([String].self, forKey: .taxableFields)
        self.vatFields = try container.decode([String].self, forKey: .vatFields)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.direction, forKey: .direction)
        try container.encode(self.taxCode, forKey: .taxCode)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
        try container.encode(self.taxableFields, forKey: .taxableFields)
        try container.encode(self.vatFields, forKey: .vatFields)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case direction
        case taxCode
        case net
        case vat
        case taxableFields
        case vatFields
    }
}